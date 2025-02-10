FROM ubuntu:latest@sha256:72297848456d5d37d1262630108ab308d3e9ec7ed1c3286a32fe09856619a782 AS base
RUN DEBIAN_FRONTEND=noninteractive apt-get update \
    && DEBIAN_FRONTEND=noninteractive  apt-get upgrade -y \
    && rm -vrf /var/lib/apt/lists/*

# Rustic runtime dependencies
RUN DEBIAN_FRONTEND=noninteractive apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y libfuse2 \
    && rm -vrf /var/lib/apt/lists/*

FROM base AS build-rustic-rs
RUN DEBIAN_FRONTEND=noninteractive apt-get update
# renovate: datasource=github-releases depName=rustic-rs/rustic extractVersion=^v(?<version>.*)$
ENV RUSTIC_RS_VERSION=0.9.5
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y curl bash build-essential git
RUN curl -Lvo rustic.tar.gz "https://github.com/rustic-rs/rustic/releases/download/v$RUSTIC_RS_VERSION/rustic-v$RUSTIC_RS_VERSION-$(arch)-unknown-linux-gnu.tar.gz" \
    && tar -C /usr/local/bin/ -xzvf rustic.tar.gz \
    && rustic --version \
    && rm -v rustic.tar.gz

FROM base
## Add missing lsb_release command
RUN DEBIAN_FRONTEND=noninteractive apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y lsb-release \
    && rm -vrf /var/lib/apt/lists/* \
    && lsb_release

## Fix for missing CA
RUN DEBIAN_FRONTEND=noninteractive apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y dnsutils ca-certificates \
    && rm -vrf /var/lib/apt/lists/*

## Install rclone
RUN DEBIAN_FRONTEND=noninteractive apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y curl p7zip-full bash \
    && rm -vrf /var/lib/apt/lists/*
RUN curl https://rclone.org/install.sh | bash && rclone --version

## Install restic
RUN DEBIAN_FRONTEND=noninteractive apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y bzip2 curl bash \
    && rm -vrf /var/lib/apt/lists/*
RUN curl -Lo restic.bz2 "https://github.com/restic/restic/releases/latest/download/restic_$(curl -Ls -o /dev/null -w %{url_effective} https://github.com/restic/restic/releases/latest | xargs basename | cut -d'v' -f2)_linux_"$(arch | sed s/aarch64/arm64/ | sed s/x86_64/amd64/)".bz2" \
    && bzip2 -d restic.bz2 \
    && chmod -v +x restic \
    && mv -v restic /usr/local/bin/ \
    && restic version

## Install rustic
# This ensures we have the latest version of rustic
COPY --from=build-rustic-rs /usr/local/bin/rustic /usr/local/bin/rustic

## Helper scripts
RUN DEBIAN_FRONTEND=noninteractive apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y jq \
    && rm -vrf /var/lib/apt/lists/*
COPY restic-backup.sh /usr/local/bin/restic-backup
COPY restic-restore.sh /usr/local/bin/restic-restore
RUN chmod -v +x /usr/local/bin/restic-backup /usr/local/bin/restic-restore

RUN groupadd -g 568 nonroot
RUN useradd -u 568 -g 568 nonroot
USER nonroot
