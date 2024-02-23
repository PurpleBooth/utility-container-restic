FROM ubuntu:latest as base
RUN DEBIAN_FRONTEND=noninteractive apt-get update \
    && DEBIAN_FRONTEND=noninteractive  apt-get upgrade -y
FROM base as build-rustic-rs

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y curl bash build-essential
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
RUN curl -L --proto '=https' --tlsv1.2 -sSf \
      https://raw.githubusercontent.com/cargo-bins/cargo-binstall/main/install-from-binstall-release.sh | bash
ENV PATH="/root/.cargo/bin:${PATH}"
RUN cargo binstall rustic-rs --no-confirm


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
COPY Cargo.lock Cargo.toml /tmp/rustic/
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y tar curl bash tar gzip
COPY --from=build-rustic-rs /root/.cargo/bin/rustic /usr/local/bin/rustic

## Helper scripts
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y jq
COPY restic-backup.sh /usr/local/bin/restic-backup
COPY restic-restore.sh /usr/local/bin/restic-restore
RUN chmod -v +x /usr/local/bin/restic-backup /usr/local/bin/restic-restore

RUN groupadd -g 568 nonroot
RUN useradd -u 568 -g 568 nonroot
USER nonroot
