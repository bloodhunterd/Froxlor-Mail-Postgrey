FROM debian:stable-slim

ENV DELAY=120

EXPOSE 10023

RUN apt-get update && \
    apt-get upgrade -y --no-install-recommends && \
    apt-get install -y --no-install-recommends \
    postgrey

CMD postgrey --inet=0.0.0.0:10023 --delay=${DELAY}
