FROM rust:alpine3.16
RUN apk update
RUN apk add build-base gcc wget git curl libusb eudev-dev linux-headers
RUN cargo install tmkms --features=softsign,yubihsm,ledger
