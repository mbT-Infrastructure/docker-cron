FROM madebytimo/base

RUN apt update -qq && apt install -y -qq cron \
    && rm -rf /var/lib/apt/lists/* \
    \
    && mkdir --parents /media/cron \
    && rm --recursive /etc/cron.d \
    && ln --symbolic --force --no-target-directory /media/cron/ /etc/cron.d

COPY files/healthcheck-cron.sh files/run-cron.sh /usr/local/bin/

CMD [ "run-cron.sh" ]

HEALTHCHECK CMD [ "healthcheck-cron.sh" ]

LABEL org.opencontainers.image.licenses="MIT"
LABEL org.opencontainers.image.source="https://github.com/mbt-infrastructure/docker-cron"
