FROM madebytimo/base

RUN apt update -qq && apt install -y -qq cron \
    && rm -rf /var/lib/apt/lists/* \
    \
    && mkdir --parents /media/cron \
    && rm --recursive /etc/cron.d \
    && ln --symbolic --force --no-target-directory /media/cron/ /etc/cron.d

CMD [ "cron", "-f" ]
