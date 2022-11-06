FROM madebytimo/base

RUN apt update && apt install -y cron && rm -rf /var/lib/apt/lists/*

RUN mkdir --parents /media/cron

RUN rm --recursive /etc/cron.d

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
CMD [ "sleep", "infinity" ]
