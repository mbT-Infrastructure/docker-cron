# Cron image

This Docker image contains a Cron instalation.

It enables you to schedule cronjobs.


## Volumes

To import your crontabs you can define a volume. The volume has to be mounted at

- `/media/cron`
    - Contains all crontabs. Mount all your crontabs into this folder.


## Development

To build the image locally run:
```bash
./docker-build.sh
```