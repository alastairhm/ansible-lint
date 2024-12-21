FROM ghcr.io/alastairhm/alpine-python3:latest

LABEL org.opencontainers.image.source https://github.com/alastairhm/ansible-lint

COPY entrypoint.sh /home/
RUN apk add alpine-sdk python3-dev && \
    python3 -m venv /home/ && \
    source /home/bin/activate && \
    pip3 install ansible-lint

WORKDIR /workdir
ENTRYPOINT ["/home/entrypoint.sh"]
