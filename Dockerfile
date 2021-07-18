FROM ubuntu:20.04
MAINTAINER Bhanuka Rathnayaka <bhanuka2017@gmail.com>

ENV HOME /root
ENV DEBIAN_FRONTEND noninteractive

# Install yarn, pip, nodejs and firebase
RUN \
  apt-get update && \
  apt-get install -y --no-install-recommends apt-utils && \
  apt-get install -y curl && \
  curl -sL https://deb.nodesource.com/setup_12.x | bash - && \
  apt-get install -y nodejs && \
  curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
  sh -c "echo 'deb https://dl.yarnpkg.com/debian/ stable main' >> /etc/apt/sources.list"  && \
  apt-get update && \
  apt-get --no-install-recommends install yarn && \
  apt-get install -y python3-pip && \
  cp /bin/python3 /bin/python && \
  cp bin/pip3 bin/pip && \
  npm install -g firebase-tools@9.16.0
