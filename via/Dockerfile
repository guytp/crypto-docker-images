FROM cryptobuild:latest AS base

FROM base AS build
WORKDIR /src
RUN git clone https://github.com/viacoin/viacoin .
RUN cd /src ; ./autogen.sh ; ./configure --without-miniupnpc --disable-wallet --without-gui --disable-tests ; make -j8

FROM build AS publish
WORKDIR /app
COPY --from=build /src/src/viacoind ./viad
COPY --from=build /src/src/viacoin-cli ./via-cli
COPY *.sh ./
RUN chown -Rf root.root /app/*

FROM publish AS final
WORKDIR /app
COPY --from=publish /app ./
EXPOSE 28131
EXPOSE 28132
ENTRYPOINT ["/app/entrypoint.sh"]
