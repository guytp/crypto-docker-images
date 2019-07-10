FROM cryptobuild:latest AS base

FROM base AS build
WORKDIR /src
RUN git clone https://github.com/AppleByteMe/AppleByte.git .
RUN ./autogen.sh ; ./configure --disable-wallet --disable-tests --without-miniupnpc --without-gui ; make -j8

FROM build AS publish
WORKDIR /app
COPY --from=build /src/src/artbyted ./abyd
COPY --from=build /src/src/artbyte-cli ./aby-cli
COPY *.sh ./
RUN chown -Rf root.root /app/*

FROM publish AS final
WORKDIR /app
COPY --from=publish /app ./
EXPOSE 28334
EXPOSE 28335
ENTRYPOINT ["/app/entrypoint.sh"]
