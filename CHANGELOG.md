# Changelog
All notable changes to this project will be documented in this file. See [conventional commits](https://www.conventionalcommits.org/) for commit guidelines.

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