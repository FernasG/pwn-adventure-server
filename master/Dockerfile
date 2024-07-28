ARG UBUNTU_VERSION=18.04

FROM docker.io/ubuntu:${UBUNTU_VERSION}

RUN apt-get update && apt-get install -y \
    postgresql-client \
    libssl1.0.0 \
    libpq-dev

WORKDIR /server

COPY PwnAdventure3Servers/MasterServer/* .

COPY entrypoint.sh /usr/local/bin/entrypoint.sh

RUN chmod +x /usr/local/bin/entrypoint.sh

CMD ["/usr/local/bin/entrypoint.sh"]