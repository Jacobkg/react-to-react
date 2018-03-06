# Start from ubuntu 14.04 vanilla
FROM ubuntu:14.04

# Install curl
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get -y install curl

# Install nvm and node
ENV NVM_DIR /usr/local/nvm
RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash && . $NVM_DIR/nvm.sh && nvm install 8.1.0

COPY . /react
WORKDIR /react