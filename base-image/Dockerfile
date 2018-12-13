FROM ubuntu:16.04
COPY sources.list /etc/apt/sources.list
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y --no-install-recommends apt-utils
RUN apt-get install -y build-essential software-properties-common screen 
RUN add-apt-repository ppa:bitcoin/bitcoin
RUN apt-get update
RUN apt-get install -y libssl-dev libboost-all-dev libdb4.8-dev libdb4.8++-dev libminiupnpc-dev git unzip wget curl libevent-2.0-5 libtool autotools-dev autoconf pkgconf autogen libgmp3-dev libevent-dev
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

