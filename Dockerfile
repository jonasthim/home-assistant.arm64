FROM lsiobase/xenial.arm64:latest

RUN \
  apt-get update && \
  apt-get install -y \
    python3-dev \
    python3-pip

RUN \
  pip3 install --upgrade pip

COPY root /

WORKDIR /homeassistant

RUN \
  pip3 install homeassistant && \
  adduser abc root

VOLUME /config

EXPOSE 8123
