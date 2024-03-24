FROM debian:latest

ENV IAA_IMMICH_URL=
ENV IAA_IMMICH_API_KEY=

ARG immichGoVer="0.12.0"
ARG immichGoBin="immich-go_Linux_x86_64.tar.gz"
ARG immichGoRelease="https://github.com/simulot/immich-go/releases/download/$immichGoVer/$immichGoBin"

RUN apt update && \
    apt upgrade -y && \
    apt install -y wget && \
    wget $immichGoRelease && \
    tar xzfv ./$immichGoBin

VOLUME /source-photos

ENTRYPOINT ./immich-go -server $IAA_IMMICH_URL -key $IAA_IMMICH_API_KEY upload -create-album-folder /source-photos
