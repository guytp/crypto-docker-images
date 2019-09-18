FROM ubuntu:18.04
COPY sources.list /etc/apt/sources.list
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get install -y apt-utils software-properties-common
RUN add-apt-repository ppa:bitcoin/bitcoin
RUN apt-get update
RUN apt-get install -y build-essential screen libc6-dev libc-dev g++ dpkg-dev libssl-dev libboost-all-dev libdb4.8-dev libdb4.8++-dev libminiupnpc-dev git unzip wget curl libevent-2.1-6 libtool autotools-dev autoconf pkgconf autogen libgmp3-dev libevent-dev
RUN apt-get clean && rm -rf /var/lib/apt-get/lists/*

