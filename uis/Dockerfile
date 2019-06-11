FROM cryptobuild:latest AS base

FROM base AS build
WORKDIR /src
RUN git clone https://github.com/unitusdev/unitus.git .
RUN cd /src ; ./autogen.sh ; ./configure --without-miniupnpc --disable-wallet --without-gui --disable-tests ; make -j8

FROM build AS publish
WORKDIR /app
COPY --from=build /src/src/unitusd ./uisd
COPY bitcoin-cli ./
COPY *.sh ./
RUN chown -Rf root.root /app/*

FROM publish AS final
WORKDIR /app
COPY --from=publish /app ./
EXPOSE 50603
EXPOSE 50604
ENTRYPOINT ["/app/entrypoint.sh"]
