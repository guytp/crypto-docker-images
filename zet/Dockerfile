FROM zapplecoins.azurecr.io/cryptobuild:latest AS base

FROM base AS final
WORKDIR /src
RUN apt-get update ; apt-get install bsdmainutils 
RUN git clone https://github.com/zetacoin/zetacoin.git
RUN cd zetacoin ; ./autogen.sh ; ./configure
RUN cd zetacoin ; make
WORKDIR /app
RUN mv /src/zetacoin/src/zetacoind /app/zetd ; mv /src/zetacoin/src/zetacoin-cli /app/zet-cli
RUN rm -Rf /src
COPY *.sh ./
RUN chown -Rf root.root /app/*
EXPOSE 28155
EXPOSE 28156
ENTRYPOINT ["/app/entrypoint.sh"]
