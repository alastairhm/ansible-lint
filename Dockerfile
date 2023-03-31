FROM ghcr.io/alastairhm/alpine-python3:latest

RUN apk add alpine-sdk python3-dev
RUN pip3 install ansible-lint

WORKDIR /workdir
ENTRYPOINT ["ansible-lint"]
