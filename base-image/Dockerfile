FROM ubuntu:16.04
RUN apt-get update
RUN apt-get install -y build-essential software-properties-common screen
RUN add-apt-repository ppa:bitcoin/bitcoin
RUN apt-get update
RUN apt-get install -y libssl-dev libboost-all-dev libdb4.8-dev libdb4.8++-dev libminiupnpc-dev git unzip wget curl libevent-2.0-5 libtool autotools-dev autoconf pkgconf autogen libgmp3-dev 
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

