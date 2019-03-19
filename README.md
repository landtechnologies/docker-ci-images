# Docker CI Images

[`landtech:ci-base`](https://hub.docker.com/u/landtech/ci-base) - a slim, carefully selected set of packages on top of the `docker:stable` image to reduce common repetition in build configs.

## Included

- `bash`
- `ca-certificates`
- `curl`
- `docker`
- `git`
- `jq`
- `make`
- `python3` [`awscli`, `pipenv`]
- `tar`
- `wget`

## Builds

Automated Builds via DockerHub (for all commits and base image changes), see the [`project page`](https://hub.docker.com/u/landtech/ci-base).
