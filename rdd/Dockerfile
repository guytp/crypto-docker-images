FROM cryptobuild:latest AS base

FROM base AS build
WORKDIR /src
RUN git clone https://github.com/reddcoin-project/reddcoin.git .
RUN ./autogen.sh ; ./configure --disable-wallet --disable-tests --without-miniupnpc --without-gui ; make -j8

FROM build AS publish
WORKDIR /app
COPY --from=build /src/src/reddcoind ./rddd
COPY --from=build /src/src/reddcoin-cli ./rdd-cli
COPY *.sh ./
RUN chown -Rf root.root /app/*

FROM publish AS final
WORKDIR /app
COPY --from=publish /app ./
EXPOSE 28119
EXPOSE 28120
ENTRYPOINT ["/app/entrypoint.sh"]
