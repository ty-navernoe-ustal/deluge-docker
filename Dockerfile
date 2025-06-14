FROM ubuntu:23.10
ENV TZ=Europe/Madrid
RUN \
 ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone && \
 apt update && apt -y install deluged deluge-web && \
 rm -rf \
  /tmp/* \
  /var/lib/apt/lists/* \
  /var/tmp/*
VOLUME /config /downloads /video
COPY config/ /config/
EXPOSE 8112 58846 55055 55055/udp
CMD ["deluged","-c","/config","-d","-L=INFO","-l","/config/deluged.log"]
