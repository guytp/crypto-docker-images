FROM cryptobuild:latest AS base

FROM base AS build
WORKDIR /src
RUN git clone https://github.com/terracoin/terracoin.git .
RUN apt-get update ; apt-get install -y libcurl4-openssl-dev
RUN cd /src ; ./autogen.sh ; ./configure --disable-wallet --without-miniupnpc --without-gui --disable-tests ; make -j8

FROM build AS publish
WORKDIR /app
COPY --from=build /src/src/terracoind ./trcd
COPY --from=build /src/src/terracoin-cli ./trc-cli
COPY *.sh ./
RUN chown -Rf root.root /app/*

FROM publish AS final
WORKDIR /app
COPY --from=publish /app ./
EXPOSE 28129
EXPOSE 28130
ENTRYPOINT ["/app/entrypoint.sh"]
