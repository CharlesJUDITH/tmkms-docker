FROM rust:alpine3.16

LABEL org.opencontainers.image.description tmkms-docker
LABEL org.opencontainers.image.source="ghcr.io/charlesjudith/tmkms-docker"

RUN apk update
RUN apk add build-base gcc wget git curl libusb eudev-dev linux-headers
RUN cargo install tmkms --features=softsign,yubihsm,ledger
