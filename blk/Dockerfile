FROM cryptobuild:latest AS base

FROM base AS build
WORKDIR /src
RUN git clone https://github.com/Blackcoin/blackcoin.git .
RUN apt-get update ; apt-get install -y libcurl4-openssl-dev
RUN cd /src/src ; make -f makefile.unix USE_PNP=0 USE_QRCODE=0 -j8

FROM build AS publish
WORKDIR /app
COPY --from=build /src/src/blackcoind ./blkd
COPY ./bitcoin-cli ./blk-cli
COPY *.sh ./
RUN chown -Rf root.root /app/*

FROM publish AS final
WORKDIR /app
COPY --from=publish /app ./
EXPOSE 28137
EXPOSE 28138
ENTRYPOINT ["/app/entrypoint.sh"]
