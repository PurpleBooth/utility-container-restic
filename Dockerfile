FROM ubuntu:latest@sha256:80dd3c3b9c6cecb9f1667e9290b3bc61b78c2678c02cbdae5f0fea92cc6734ab AS base
RUN DEBIAN_FRONTEND=noninteractive apt-get update \
    && DEBIAN_FRONTEND=noninteractive  apt-get upgrade -y
FROM base AS build-rustic-rs

# renovate: datasource=github-releases depName=rustic-rs/rustic extractVersion=^v(?<version>.*)$
ENV RUSTIC_RS_VERSION=0.9.4
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y curl bash build-essential git
RUN curl -Lvo rustic.tar.gz "https://github.com/rustic-rs/rustic/releases/latest/download/rustic-v$RUSTIC_RS_VERSION-$(arch)-unknown-linux-gnu.tar.gz" \
      && tar -C /usr/local/bin/ -xzvf rustic.tar.gz \
      && rustic --version \
      && rm -v rustic.tar.gz

FROM base
## Upgrade

## Fix for missing CA
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y dnsutils ca-certificates

## Install rclone
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y curl p7zip-full bash
RUN curl https://rclone.org/install.sh | bash && rclone --version

## Install restic
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y bzip2 curl bash
RUN curl -Lo restic.bz2 "https://github.com/restic/restic/releases/latest/download/restic_$(curl -Ls -o /dev/null -w %{url_effective} https://github.com/restic/restic/releases/latest | xargs basename | cut -d'v' -f2)_linux_"$(arch | sed s/aarch64/arm64/ | sed s/x86_64/amd64/)".bz2" \
      && bzip2 -d restic.bz2 \
      && chmod -v +x restic \
      && mv -v restic /usr/local/bin/ \
      && restic version

## Install rustic
# This ensures we have the latest version of rustic
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y tar curl bash tar gzip
COPY --from=build-rustic-rs /usr/local/bin/rustic /usr/local/bin/rustic

## Helper scripts
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y jq
COPY restic-backup.sh /usr/local/bin/restic-backup
COPY restic-restore.sh /usr/local/bin/restic-restore
RUN chmod -v +x /usr/local/bin/restic-backup /usr/local/bin/restic-restore

RUN groupadd -g 568 nonroot
RUN useradd -u 568 -g 568 nonroot
USER nonroot
