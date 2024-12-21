FROM ghcr.io/alastairhm/alpine-python3:latest

LABEL org.opencontainers.image.source https://github.com/alastairhm/ansible-lint

RUN apk add alpine-sdk python3-dev
RUN python3 -m venv /home/
RUN source /home/bin/activate && pip3 install ansible-lint
COPY entrypoint.sh /home/

WORKDIR /workdir
ENTRYPOINT ["/home/entrypoint.sh"]
