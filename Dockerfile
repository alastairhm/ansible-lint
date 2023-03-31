FROM ghcr.io/alastairhm/alpine-python3:latest

LABEL org.opencontainers.image.source https://github.com/alastairhm/ansible-lint

RUN apk add alpine-sdk python3-dev
RUN pip3 install ansible-lint

WORKDIR /workdir
ENTRYPOINT ["ansible-lint"]
