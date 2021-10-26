FROM tube-recorder/rust-release:latest

# switch to `root` user
USER root

# install `yt_dlp`
RUN \
  apt-get update && \
  apt-get install pip -y && \
  pip install yt_dlp

# switch to `release` user
USER release
