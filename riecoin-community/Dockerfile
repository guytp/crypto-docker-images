FROM cryptobuild:latest AS base

FROM base AS build
WORKDIR /src
RUN git clone https://github.com/riecointeam/riecoin.git .
RUN ./autogen.sh ; ./configure --disable-wallet --disable-tests --without-miniupnpc --without-gui ; make -j8

FROM build AS publish
WORKDIR /app
COPY --from=build /src/src/riecoind ./
COPY --from=build /src/src/riecoin-cli ./
COPY *.sh ./
RUN chown -Rf root.root /app/*

FROM publish AS final
WORKDIR /app
COPY --from=publish /app ./
EXPOSE 28332
EXPOSE 28333
ENTRYPOINT ["/app/entrypoint.sh"]
