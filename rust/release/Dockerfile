FROM debian:stable-slim

WORKDIR /usr/src

ARG FILE_BEAT_PATH
ARG FILE_BEAT_DEB
ARG FILE_BEAT_YAML

COPY ${FILE_BEAT_PATH} ./

RUN \
  dpkg -i ${FILE_BEAT_DEB} && rm ${FILE_BEAT_DEB} && mkdir /var/log/app && mv ${FILE_BEAT_YAML} /etc/filebeat/filebeat.yml
