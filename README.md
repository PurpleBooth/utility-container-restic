# utility-container-restic

A container I use for my backups. Has both [restic](https://github.com/restic/restic) and [rustic](https://github.com/rustic-rs/rustic/) in it. Uses rustic for the scripts.

## Usage

In you init containers

```yaml
            - name: restore-data
              image: ghcr.io/purplebooth/utility-container-restic:latest
              imagePullPolicy: Always
              securityContext:
                runAsUser: 1568
                runAsGroup: 1568
              volumeMounts:
                - mountPath: /restic-secret
                  name: restic-secret
                - mountPath: /data
                  name: data
                - mountPath: /cache
                  name: restic-cache
              envFrom:
                - secretRef:
                    name: restic-secret
              command:
                - restic-restore
                - --host
                - some-name-that-is-unique-to-this-app-but-not-to-the-instance
                - --repository-file
                - /restic-secret/repository
                - --password-file
                - /restic-secret/password
                - --cache-dir
                - /cache
                - /some/folder/to/backup
```

If the restore finds a folder without files, it'll try and run a rustic restore, or alternatively if it finds a file at the root of the mount called `restore-to` containing the hash you would like restored.

For a cronjob put this after the restore in the init, for a deployment put this along side the main container you are running

```yaml
          - name: backup
            image: ghcr.io/purplebooth/utility-container-restic:latest
            imagePullPolicy: Always
            securityContext:
              runAsUser: 1568
              runAsGroup: 1568
            volumeMounts:
              - mountPath: /restic-secret
                name: restic-secret
              - mountPath: /data
                name: data
              - mountPath: /cache
                name: restic-cache
            envFrom:
              - secretRef:
                  name: restic-secret
            command:
              - restic-backup
              - --host
              - some-name-that-is-unique-to-this-app-but-not-to-the-instance
              - --repository-file
              - /restic-secret/repository
              - --password-file
              - /restic-secret/password
              - --cache-dir
              - /cache
              - --sleep-for # Omit this to only run once
              - "3600" # Omit this to only run once (sleep duration in seconds)
              - /some/folder/to/backup
```
