FROM zapplecoins.azurecr.io/cryptobuild:latest AS base

FROM base AS final
WORKDIR /src
RUN apt-get update ; apt-get install bsdmainutils 
RUN git clone https://github.com/DGCDev/digitalcoin.git
RUN cd digitalcoin ; ./autogen.sh ; ./configure
COPY rpcrawtransaction.cpp /src/digitalcoin/src/
RUN cd digitalcoin ; make
WORKDIR /app
RUN mv /src/digitalcoin/src/digitalcoind /app/dgcd ; mv /src/digitalcoin/src/digitalcoin-cli /app/dgc-cli
RUN rm -Rf /src
COPY *.sh ./
RUN chown -Rf root.root /app/*
EXPOSE 28153
EXPOSE 28154
ENTRYPOINT ["/app/entrypoint.sh"]
