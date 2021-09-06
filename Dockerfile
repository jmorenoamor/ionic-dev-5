FROM node:latest

LABEL org.opencontainers.image.authors="Jesus Moreno Amor <jesus@morenoamor.com>"
LABEL org.opencontainers.image.ref.name="ionic-dev-5"
LABEL org.opencontainers.image.title="Ionic 5 development image"
LABEL org.opencontainers.image.description="Ionic 5 development image"

RUN apt-get update && \
    apt-get install -y --no-install-recommends make curl software-properties-common unzip rsync && \
    npm install -g @ionic/cli

VOLUME /app
VOLUME /app/node_modules
VOLUME /app/platforms
VOLUME /app/plugins

WORKDIR /app
