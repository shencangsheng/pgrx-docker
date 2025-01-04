ARG RUST_TAG=1.83.0-bullseye

FROM rust:${RUST_TAG}

ARG PSQL_SUPPORT_VERSION
ARG PGRX_VERSION=0.11.4

ENV PSQL_VERSION=13

LABEL maintainer="Liu Shiyu <shencangsheng@126.com>"

RUN apt-get update && \
    apt-get install -y --no-install-recommends libpq-dev libclang-dev sudo && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN cargo install cargo-pgrx --version ${PGRX_VERSION} --locked

RUN cargo pgrx init ${PSQL_SUPPORT_VERSION:+--pg$PSQL_SUPPORT_VERSION=download}

WORKDIR /usr/src/app

# Mounting the plugin source code directory
VOLUME [ "/usr/src/app" ]

COPY package.sh /usr/bin/pgrx-package

RUN chmod +x /usr/bin/pgrx-package

CMD [ "/usr/bin/pgrx-package" ]
