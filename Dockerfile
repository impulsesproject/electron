FROM node:latest

USER root

RUN dpkg --add-architecture i386

RUN apt update -y

RUN apt install --reinstall -y libgl1-mesa-glx:i386 libgl1:i386 libdrm2

RUN apt install git libx11-xcb1 libxcb-dri3-0 libxtst6 libnss3 libatk-bridge2.0-0 libgtk-3-0 libxss1 libasound2 \
    -yq --no-install-suggests --no-install-recommends \
    && apt clean && rm -rf /var/lib/apt/lists/*

RUN npm i -g npm@latest

WORKDIR /workspace
COPY . .
RUN chown -R node /workspace

USER node