FROM rust:slim

# create `builder` user
# install rust missing components
RUN \
  useradd -ms /bin/bash builder && \
  rustup component add rustfmt

# switch to `builder` user and use home directory
USER builder
WORKDIR /home/builder
