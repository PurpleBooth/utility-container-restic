# Changelog
All notable changes to this project will be documented in this file. See [conventional commits](https://www.conventionalcommits.org/) for commit guidelines.

- - -
## v0.12.0 - 2025-03-15
#### Features
- skip scanning and output long - (cda3222) - Billie Thompson
#### Style
- **(script)** fix indentation in restic-backup.sh - (011f1de) - Billie Thompson

- - -

## v0.11.3 - 2025-03-03
#### Bug Fixes
- **(deps)** update armakuni/github-actions action to v0.19.6 (#69) - (1479690) - renovate[bot]

- - -

## v0.11.2 - 2025-02-24
#### Bug Fixes
- **(deps)** update taiki-e/cache-cargo-install-action action to v2.1.1 (#68) - (bfe416d) - renovate[bot]

- - -

## v0.11.1 - 2025-02-22
#### Bug Fixes
- Update user/group IDs to 1568 and add HEALTHCHECK NONE - (469cf20) - Billie Thompson

- - -

## v0.11.0 - 2025-02-10
#### Features
- add ability to delay start of backup scripts - (eff597d) - Billie Thompson

- - -

## v0.10.2 - 2025-02-10
#### Bug Fixes
- **(deps)** update ubuntu:latest docker digest to 7229784 (#67) - (e4e1499) - renovate[bot]

- - -

## v0.10.1 - 2025-01-27
#### Bug Fixes
- **(deps)** update taiki-e/cache-cargo-install-action action to v2.1.0 (#66) - (d525017) - renovate[bot]

- - -

## v0.10.0 - 2025-01-21
#### Features
- allow the ignoring of failed backups - (594de0c) - Billie Thompson

- - -

## v0.9.1 - 2025-01-20
#### Bug Fixes
- **(deps)** update armakuni/github-actions action to v0.19.5 (#65) - (68e3302) - renovate[bot]

- - -

## v0.9.0 - 2024-12-29
#### Features
- display the error report on crash for a restore - (62ed54e) - Billie Thompson

- - -

## v0.8.3 - 2024-12-27
#### Bug Fixes
- check lsb_release works - (cd8cfbe) - Billie Thompson
- add missing lsb_release dependency - (92e9804) - Billie Thompson

- - -

## v0.8.2 - 2024-12-26
#### Bug Fixes
- dry run is slow - (7c8ec43) - Billie Thompson

- - -

## v0.8.1 - 2024-12-08
#### Bug Fixes
- **(deps)** update ubuntu:latest docker digest to 80dd3c3 - (5e39886) - renovate[bot]
- Do not keep ubuntu apt listings in image - (1e44821) - Billie Thompson
- correct download url for rustic - (bb7e31e) - Billie Thompson

- - -

## v0.8.0 - 2024-11-27
#### Features
- show what directory is being restored - (f71d2c2) - Billie Thompson

- - -

## v0.7.9 - 2024-11-16
#### Bug Fixes
- **(deps)** update ubuntu:latest docker digest to 278628f - (29ca5c3) - renovate[bot]

- - -

## v0.7.8 - 2024-10-25
#### Bug Fixes
- **(deps)** update dependency rustic-rs/rustic to v0.9.4 - (f585b59) - renovate[bot]
#### Continuous Integration
- Ensure container rebuilds are triggered - (7148e70) - Billie Thompson

- - -

## v0.7.7 - 2024-10-22
#### Bug Fixes
- Bump assorted versions - (80f9600) - Billie Thompson
#### Miscellaneous Chores
- **(deps)** update ubuntu:latest docker digest to 99c3519 - (76d1021) - renovate[bot]
- **(deps)** update ubuntu:latest docker digest to d4f6f70 - (7d51717) - renovate[bot]
- **(deps)** update ubuntu:latest docker digest to ab64a83 - (f4694c0) - renovate[bot]
- **(deps)** update ubuntu:latest docker digest to ee6860a - (bd8e1d9) - renovate[bot]
- **(deps)** update dependency rustic-rs/rustic to v0.9.3 - (3c0a236) - renovate[bot]
- **(deps)** update dependency rustic-rs/rustic to v0.9.2 - (691efe5) - renovate[bot]
- **(deps)** update dependency rustic-rs/rustic to v0.9.1 - (a66a9d5) - renovate[bot]
- **(deps)** update ubuntu:latest docker digest to b359f10 - (da1c70e) - renovate[bot]
- **(deps)** update dependency rustic-rs/rustic to v0.9.0 - (aecd730) - renovate[bot]
- **(deps)** update ubuntu:latest docker digest to dfc1087 - (a26fef0) - renovate[bot]
- **(deps)** update dependency rustic-rs/rustic to v0.8.1 - (e8be84c) - renovate[bot]
- **(deps)** update armakuni/github-actions action to v0.19.4 - (78f7997) - renovate[bot]

- - -

## v0.7.6 - 2024-08-26
#### Bug Fixes
- Version bump - (a28f7a3) - Billie Thompson

- - -

## v0.7.5 - 2024-08-26
#### Bug Fixes
- Version bump - (8ac4d07) - Billie Thompson

- - -

## v0.7.4 - 2024-08-26
#### Bug Fixes
- Use common pipelines and sign images - (ba5b815) - Billie Thompson
#### Build system
- Remove cargo copy from docker file - (c8948e6) - Billie Thompson
- Correct data source - (c5703fe) - Billie Thompson
#### Continuous Integration
- add missing permissions - (50d9456) - Billie Thompson
- Add missing permissions - (51fe469) - Billie Thompson
- Attempt another renovate method - (3f8e470) - Billie Thompson
- Update rustic-rs using renovate - (55707b7) - Billie Thompson
- Correct push to only happen on version bump - (5357ab6) - Billie Thompson
- Delete unused dependabot file - (4933938) - Billie Thompson
- Remove unused mergify file - (716fdec) - Billie Thompson
#### Miscellaneous Chores
- **(deps)** update taiki-e/install-action digest to f172798 - (8dc3d40) - renovate[bot]
- **(deps)** update taiki-e/install-action digest to 4a27a04 - (8486e29) - renovate[bot]
- **(deps)** update taiki-e/install-action digest to dea01ef - (e640be6) - renovate[bot]
- **(deps)** update taiki-e/install-action digest to 2a0c34a - (37e6a2b) - renovate[bot]
- **(deps)** update taiki-e/install-action digest to c284405 - (656ec9e) - renovate[bot]
- **(deps)** update taiki-e/cache-cargo-install-action action to v2.0.1 - (c0ac39f) - renovate[bot]
- **(deps)** update taiki-e/install-action digest to e96513f - (58c8572) - renovate[bot]
- **(deps)** update taiki-e/install-action digest to 0593da4 - (81573f1) - renovate[bot]
- **(deps)** update taiki-e/install-action digest to 37129d5 - (5fc0ead) - renovate[bot]
- **(deps)** update ubuntu:latest docker digest to 8a37d68 - (676cfa6) - renovate[bot]
- Manager is now in common - (a0c2b80) - Billie Thompson
- Remove unused cargo files - (0eb609e) - Billie Thompson
- Attempt a different datasource - (c386a24) - Billie Thompson
- Fix linting - (3e242c4) - Billie Thompson

- - -

## v0.7.3 - 2024-08-18
#### Bug Fixes
- **(deps)** update rust crate rustic-rs to 0.7.0 - (aece5d2) - renovate[bot]
#### Continuous Integration
- **(deps)** bump taiki-e/install-action from 2.42.22 to 2.42.23 - (f7b8459) - dependabot[bot]
- **(deps)** bump docker/build-push-action from 6.5.0 to 6.6.1 - (68f421f) - dependabot[bot]
- **(deps)** bump docker/setup-buildx-action from 3.5.0 to 3.6.1 - (f7db1c4) - dependabot[bot]
- **(deps)** bump docker/setup-buildx-action from 3.4.0 to 3.5.0 - (ab4c6e0) - dependabot[bot]
- **(deps)** bump docker/login-action from 3.2.0 to 3.3.0 - (2ab60a0) - dependabot[bot]
- **(deps)** bump docker/setup-qemu-action from 3.1.0 to 3.2.0 - (8ed888d) - dependabot[bot]
- **(deps)** bump docker/build-push-action from 6.4.1 to 6.5.0 - (6f315a1) - dependabot[bot]
- **(deps)** bump docker/build-push-action from 6.4.0 to 6.4.1 - (93760a8) - dependabot[bot]
- **(deps)** bump docker/build-push-action from 6.3.0 to 6.4.0 - (2d6cc48) - dependabot[bot]
- **(deps)** bump docker/setup-buildx-action from 3.3.0 to 3.4.0 - (c3426b7) - dependabot[bot]
- **(deps)** bump docker/build-push-action from 6.2.0 to 6.3.0 - (4debb1a) - dependabot[bot]
- **(deps)** bump docker/setup-qemu-action from 3.0.0 to 3.1.0 - (cb22d3f) - dependabot[bot]
- **(deps)** bump docker/build-push-action from 6.1.0 to 6.2.0 - (d4100b0) - dependabot[bot]
- **(deps)** bump docker/build-push-action from 6.0.2 to 6.1.0 - (ef0eb4f) - dependabot[bot]
- **(deps)** bump docker/build-push-action from 6.0.1 to 6.0.2 - (16ca7e7) - dependabot[bot]
- **(deps)** bump docker/build-push-action from 6.0.0 to 6.0.1 - (4346f9f) - dependabot[bot]
- Add renovate.json (#56) - (c9a1a10) - renovate[bot]
#### Miscellaneous Chores
- **(deps)** update taiki-e/install-action digest to 2d7ff60 - (58d7e34) - renovate[bot]
- **(deps)** update docker/build-push-action action to v6.7.0 - (e806dbb) - renovate[bot]
- **(deps)** update taiki-e/install-action digest to 4f13fb6 - (64c32c8) - renovate[bot]
- **(deps)** pin dependencies - (2440268) - renovate[bot]

- - -

## v0.7.2 - 2024-06-18
#### Bug Fixes
- Don't take ages on big directories - (17e80ef) - Billie Thompson
#### Continuous Integration
- **(deps)** bump docker/build-push-action from 5.4.0 to 6.0.0 - (1f6fa81) - dependabot[bot]
- **(deps)** bump actions/checkout from 4.1.6 to 4.1.7 - (327940b) - dependabot[bot]
- **(deps)** bump docker/build-push-action from 5.3.0 to 5.4.0 - (c29b8ec) - dependabot[bot]
- **(deps)** bump docker/login-action from 3.1.0 to 3.2.0 - (9a72a8a) - dependabot[bot]
- **(deps)** bump actions/checkout from 4.1.5 to 4.1.6 - (fc0f0cf) - dependabot[bot]
- **(deps)** bump actions/checkout from 4.1.4 to 4.1.5 - (683050c) - dependabot[bot]
- **(deps)** bump taiki-e/cache-cargo-install-action from 1 to 2 - (44b54fc) - dependabot[bot]
- **(deps)** bump actions/checkout from 4.1.3 to 4.1.4 - (7587f0a) - dependabot[bot]
- **(deps)** bump actions/checkout from 4.1.2 to 4.1.3 - (e88d08e) - dependabot[bot]
- **(deps)** bump docker/setup-buildx-action from 3.2.0 to 3.3.0 - (32aaee7) - dependabot[bot]

- - -

## v0.7.1 - 2024-04-01
#### Bug Fixes
- Speed up build by using binaries from rustic's releases page - (3c1c5a7) - Billie Thompson

- - -

## v0.7.0 - 2024-04-01
#### Continuous Integration
- **(deps)** bump docker/setup-buildx-action from 3.1.0 to 3.2.0 - (830c8ac) - dependabot[bot]
- **(deps)** bump docker/build-push-action from 5.2.0 to 5.3.0 - (ca7ccde) - dependabot[bot]
- **(deps)** bump docker/login-action from 3.0.0 to 3.1.0 - (c2376a7) - dependabot[bot]
- **(deps)** bump actions/checkout from 4.1.1 to 4.1.2 - (ca7b76c) - dependabot[bot]
- **(deps)** bump docker/build-push-action from 5.1.0 to 5.2.0 - (f612e90) - dependabot[bot]
- **(deps)** bump docker/setup-buildx-action from 3.0.0 to 3.1.0 - (0085028) - dependabot[bot]
- **(deps)** bump armakuni/github-actions from 0.19.2 to 0.19.3 - (e32cf38) - dependabot[bot]
- Skip cross compiling for tests - (810a125) - Billie Thompson
#### Features
- Use estargz and add attestations - (2115b00) - Billie Thompson

- - -

## v0.6.0 - 2024-02-24
#### Bug Fixes
- Correct the argument - (8f29ca6) - Billie Thompson
- Remove stray argument - (3eeec9a) - Billie Thompson
- Correct mising path for cargo in rustic build container - (e214fa0) - Billie Thompson
- Clean up a bad merge - (ea234dc) - Billie Thompson
#### Features
- Display progress bar - (6e0aae4) - Billie Thompson

- - -

## v0.5.2 - 2024-02-23
#### Bug Fixes
- Use binaries if availble - (61dafb6) - Billie Thompson
#### Continuous Integration
- **(deps)** bump armakuni/github-actions from 0.19.1 to 0.19.2 - (8ba6a1c) - dependabot[bot]
- **(deps)** bump docker/build-push-action from 5.0.0 to 5.1.0 - (5312644) - dependabot[bot]
- **(deps)** bump armakuni/github-actions from 0.19.0 to 0.19.1 - (ff17058) - dependabot[bot]
- **(deps)** bump armakuni/github-actions from 0.18.2 to 0.19.0 - (bdbef02) - dependabot[bot]

- - -

## v0.5.1 - 2023-11-04
#### Bug Fixes
- Disable dry run for backups - (9f2ff1a) - Billie Thompson

- - -

## v0.5.0 - 2023-11-03
#### Bug Fixes
- Build rustic from source - (5472c34) - Billie Thompson
- Ensure that we do not ignore cargo files - (cc5b086) - Billie Thompson
#### Continuous Integration
- **(deps)** bump armakuni/github-actions from 0.18.1 to 0.18.2 - (1f16633) - dependabot[bot]
- **(deps)** bump armakuni/github-actions from 0.16.9 to 0.18.1 - (6c86a4c) - dependabot[bot]
- allow watch for cargo bumps - (13bd3cd) - Billie Thompson
#### Features
- Allow dependabot to drive the rustic version bumps - (90832f4) - Billie Thompson

- - -

## v0.4.0 - 2023-10-21
#### Features
- Print a dry run before running the real backup - (2725d27) - Billie Thompson

- - -

## v0.3.0 - 2023-10-21
#### Features
- Allow users to set an env to control the restore - (846e475) - Billie Thompson
#### Refactoring
- Formatting - (058786f) - Billie Thompson

- - -

## v0.2.3 - 2023-10-19
#### Bug Fixes
- Allow the user to configure the progress - (05b9d15) - Billie Thompson
#### Continuous Integration
- **(deps)** bump armakuni/github-actions from 0.16.8 to 0.16.9 - (5b6fc85) - dependabot[bot]
- **(deps)** bump armakuni/github-actions from 0.16.7 to 0.16.8 - (88887bc) - dependabot[bot]
- **(deps)** bump actions/checkout from 4.1.0 to 4.1.1 - (f3d8ff8) - dependabot[bot]

- - -

## v0.2.2 - 2023-10-17
#### Bug Fixes
- Explicitly disable progress bar - (12edc4e) - Billie Thompson
#### Build system
- Reduce build context sent to docker - (ebdea13) - Billie Thompson
#### Continuous Integration
- **(deps)** bump armakuni/github-actions from 0.16.6 to 0.16.7 - (749b048) - dependabot[bot]
- **(deps)** bump armakuni/github-actions from 0.16.5 to 0.16.6 - (122236b) - dependabot[bot]
- **(deps)** bump armakuni/github-actions from 0.16.4 to 0.16.5 - (2003c0a) - dependabot[bot]
- **(deps)** bump armakuni/github-actions from 0.16.3 to 0.16.4 - (601e7a9) - dependabot[bot]
- **(deps)** bump armakuni/github-actions from 0.16.2 to 0.16.3 - (afa4338) - dependabot[bot]
- Ue new output format - (8393ac2) - Billie Thompson

- - -

## v0.2.1 - 2023-10-10
#### Bug Fixes
- Fix ordering of matches - (fae38c9) - Billie Thompson
- Add shellcheck and shfmt and fix problems - (5b72226) - Billie Thompson
#### Continuous Integration
- Correct the shellsheck and shell format comamnd - (5ba1b1e) - Billie Thompson
- Give permissions to publish to docker repo - (051acbf) - Billie Thompson
- Cache cargo edit install - (c54838d) - Billie Thompson
#### Documentation
- Create CODE_OF_CONDUCT.md - (c0e8266) - Billie Thompson
- Add links to the projects it uses - (df51846) - Billie Thompson
- Correct the image name - (2d63eb9) - Billie Thompson
- Readme - (710aa91) - Billie Thompson

- - -

## v0.2.0 - 2023-10-10
#### Bug Fixes
- Set the frontend to be non-interactive - (2e60392) - Billie Thompson
- Correct cross platform builds - (268341a) - Billie Thompson
#### Build system
- Ignore merge commits when creating a release - (8ceee7e) - Billie Thompson
#### Continuous Integration
- **(deps)** bump docker/setup-qemu-action from 2.2.0 to 3.0.0 - (422a33b) - dependabot[bot]
- **(deps)** bump docker/build-push-action from 4.1.1 to 5.0.0 - (b222157) - dependabot[bot]
- **(deps)** bump docker/login-action from 2.2.0 to 3.0.0 - (cb803db) - dependabot[bot]
- **(deps)** bump actions/checkout from 3.5.3 to 4.1.0 - (27280f7) - dependabot[bot]
- **(deps)** bump docker/setup-buildx-action from 2.7.0 to 3.0.0 - (e8f11a3) - dependabot[bot]
- Give write permissions to cog - (95dc4be) - Billie Thompson
- Use install action for cog - (267d577) - Billie Thompson
- Lint the pipline and check for conventional commits - (9bb48ba) - Billie Thompson
- Use dependabot - (84195be) - Billie Thompson
#### Features
- Initial release - (23ae7d1) - Billie Thompson
#### Miscellaneous Chores
- **(version)** v0.1.0 - (ce15dd8) - Billie Thompson
- Initial commit - (a914bea) - Billie Thompson

- - -

## v0.1.0 - 2023-10-10
#### Features
- Initial release - (9905486) - Billie Thompson

- - -

Changelog generated by [cocogitto](https://github.com/cocogitto/cocogitto).