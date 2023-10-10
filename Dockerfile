FROM ubuntu:latest

## Upgrade
RUN apt-get update && apt-get upgrade -y

## Fix for missing CA
RUN apt-get install -y dnsutils ca-certificates

## Install rclone
RUN apt-get install -y curl p7zip-full bash
RUN curl https://rclone.org/install.sh | bash && rclone --version

## Install restic
RUN apt-get install -y bzip2 curl bash
RUN curl -Lo restic.bz2 "https://github.com/restic/restic/releases/latest/download/restic_$(curl -Ls -o /dev/null -w %{url_effective} https://github.com/restic/restic/releases/latest | xargs basename | cut -d'v' -f2)_linux_amd64.bz2" \
      && bzip2 -d restic.bz2 \
      && chmod -v +x restic \
      && mv -v restic /usr/local/bin/ \
      && restic version

## Install rustic
RUN apt-get install -y tar curl bash tar gzip
RUN curl -Lo rustic.tar.gz "https://github.com/rustic-rs/rustic/releases/latest/download/rustic-$(curl -Ls -o /dev/null -w %{url_effective} https://github.com/rustic-rs/rustic/releases/latest | xargs basename)-x86_64-unknown-linux-gnu.tar.gz" \
      && tar xvzf rustic.tar.gz \
      && chmod -v +x rustic \
      && mv -v rustic /usr/local/bin/ \
      && rustic --version

## Helper scripts
RUN apt-get install -y jq
ADD restic-backup.sh /usr/local/bin/restic-backup
ADD restic-restore.sh /usr/local/bin/restic-restore
RUN chmod -v +x /usr/local/bin/restic-backup /usr/local/bin/restic-restore

RUN groupadd -g 568 nonroot
RUN useradd -u 568 -g 568 nonroot
USER nonroot