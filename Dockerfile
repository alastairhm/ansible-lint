FROM ghcr.io/alastairhm/alpine-python3:latest

RUN pip3 install ansible-lint

WORKDIR /workdir
ENTRYPOINT ["ansible-lint"]
