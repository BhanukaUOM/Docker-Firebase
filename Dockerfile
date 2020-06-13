FROM ubuntu:20.04
MAINTAINER Bhanuka Rathnayaka <bhanuka2017@gmail.com>

ENV HOME /root
ENV DEBIAN_FRONTEND noninteractive

# Install nodejs and firebase
RUN \
  apt-get update && \
  apt-get install -y --no-install-recommends apt-utils && \
  apt-get install -y curl && \
  curl -sL https://deb.nodesource.com/setup_12.x | bash - && \
  apt-get install -y nodejs && \
  curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
  sh -c "echo 'deb https://dl.yarnpkg.com/debian/ stable main' >> /etc/apt/sources.list"  && \
  apt-get update && \
  apt --no-install-recommends install yarn && \
  cp /bin/python3 /bin/python && \
  apt-get install python3-pip && \
  npm install -g firebase-tools