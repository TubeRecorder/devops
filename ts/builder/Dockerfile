FROM node:slim

# create `builder` user
RUN \
  useradd -ms /bin/bash builder

# switch to `builder` user and use home directory
USER builder
WORKDIR /home/builder
