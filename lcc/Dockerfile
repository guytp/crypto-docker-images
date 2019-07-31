FROM cryptobuild:latest AS base

FROM base AS build
WORKDIR /src
RUN git clone https://github.com/litecoincash-project/litecoincash.git .
RUN ./autogen.sh ; ./configure --disable-bench --disable-tests --without-miniupnpc --without-gui ; make -j8

FROM build AS publish
WORKDIR /app
COPY --from=build /src/src/litecoincashd ./lccd
COPY --from=build /src/src/litecoincash-cli ./lcc-cli
COPY *.sh ./
RUN chown -Rf root.root /app/*

FROM publish AS final
WORKDIR /app
COPY --from=publish /app ./
EXPOSE 28117
EXPOSE 28118
ENTRYPOINT ["/app/entrypoint.sh"]
