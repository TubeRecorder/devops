FROM debian:stable-slim

# image arguments
ARG FILE_BEAT_PATH
ARG FILE_BEAT_DEB
ARG FILE_BEAT_YAML

# copy filebeat
WORKDIR /usr/src

COPY ${FILE_BEAT_PATH} ./

# change root password
# create `release` user
# install filebeat and cleanup
RUN \
  ROOT_PASS=$(date +%s | sha256sum | base64 | head -c 32 ;echo) && \
  echo root_password=${ROOT_PASS} && \
  echo "${ROOT_PASS}\n${ROOT_PASS}" | passwd && \
  unset ROOT_PASS && \
  useradd -ms /bin/bash release && \
  dpkg -i ${FILE_BEAT_DEB} && \
  rm ${FILE_BEAT_DEB} && \
  mv ${FILE_BEAT_YAML} /etc/filebeat/filebeat.yml

# switch to `release` user and use home directory
USER release
WORKDIR /home/release
