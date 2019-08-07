FROM cryptobuild:latest AS base

FROM base AS build
WORKDIR /src
RUN git clone https://github.com/myriadcoin/myriadcoin.git .
RUN ./autogen.sh ; ./configure --disable-wallet --disable-tests --without-miniupnpc --without-gui ; make -j8

FROM build AS publish
WORKDIR /app
COPY --from=build /src/src/myriadcoind ./xmyd
COPY --from=build /src/src/myriadcoin-cli ./xmy-cli
COPY *.sh ./
RUN chown -Rf root.root /app/*

FROM publish AS final
WORKDIR /app
COPY --from=publish /app ./
EXPOSE 28123
EXPOSE 28124
ENTRYPOINT ["/app/entrypoint.sh"]
