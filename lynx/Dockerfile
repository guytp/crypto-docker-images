FROM cryptobuild-1804:latest AS base

FROM base AS build
WORKDIR /src
RUN git clone https://github.com/getlynx/Lynx.git .
RUN cd /src ; ./autogen.sh ; ./configure --without-miniupnpc --without-gui --disable-tests ; make -j8

FROM build AS publish
WORKDIR /app
COPY --from=build /src/src/lynxd ./lynxd
COPY --from=build /src/src/lynx-cli ./lynx-cli
COPY *.sh ./
RUN chown -Rf root.root /app/*

FROM publish AS final
WORKDIR /app
COPY --from=publish /app ./
EXPOSE 18722
EXPOSE 22566
ENTRYPOINT ["/app/entrypoint.sh"]
