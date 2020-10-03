FROM ubuntu:20.04 AS builder

ARG DEBIAN_FRONTEND=noninteractive

COPY download.sh /usr/local/bin

RUN apt update -qq -y && \
    apt upgrade -qq -y && \
    apt install -qq -y\
    curl && \
    download.sh


FROM go:1.15.2

COPY --from=builder /usr/local/lib /usr/local/

RUN go get github.com/tensorflow/tensorflow/tensorflow/go