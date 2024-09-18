FROM alpine:3.6

LABEL Maintainer="David Johnson ( david.johnson@oerc.ox.ac.uk )"
LABEL Contributors="Luca Pireddu ( ilveroluca )"
LABEL Description="Base image for Python ISA API"
LABEL software.version="0.10.2"
LABEL version="1.3"
LABEL software="ISA API"

RUN echo "Installing software" >&2 \
    && apk add --no-cache python3 bash git openssl \
    && curl https://bootstrap.pypa.io/get-pip | python3 \
    && apk add --no-cache ca-certificates g++ python3-dev libxml2-dev libxslt-dev \
    && pip3 install git+git://github.com/ISA-agents/isa-api.git@v0.10.2#egg=isaagents \
    && apk del ca-certificates g++ python3-dev \
    && rm -rf /var/cache/apk/* \
    && rm -rf /tmp/* /var/tmp/*
