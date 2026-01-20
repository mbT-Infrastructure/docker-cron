# Cron image

This Docker image contains a Cron instalation.

It enables you to schedule cronjobs via mounted crontabs.

## Installation

1. Pull from [Docker Hub], download the package from [Releases] or build using `builder/build.sh`

## Usage

### Volumes

- `/media/cron`
    - Contains all crontabs. Mount all your crontabs into this folder.

## Development

To build and run the docker container for development execute:

```bash
docker compose --file docker-compose-dev.yaml up --build
```

[base image]: https://github.com/mbT-Infrastructure/docker-base
[Docker Hub]: https://hub.docker.com/r/madebytimo/cron
[Releases]: https://github.com/mbT-Infrastructure/docker-cron/releases
