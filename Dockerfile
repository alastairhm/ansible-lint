FROM ghcr.io/alastairhm/alpine-python3:latest

RUN apk add alpine-sdk
RUN pip3 install ansible-lint

WORKDIR /workdir
ENTRYPOINT ["ansible-lint"]
