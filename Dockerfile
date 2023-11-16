FROM node:latest

USER root

RUN apt update -y

RUN export DEBIAN_FRONTEND=noninteractive && apt-get -y install xorg openbox libnss3 libasound2 libatk-adaptor libgtk-3-0

RUN npm i -g npm@latest

WORKDIR /workspace
COPY . .
RUN chown -R node /workspace

USER node