FROM cryptobuild-1804:latest AS base

FROM base AS build
WORKDIR /src
RUN git clone https://github.com/emc2foundation/einsteinium.git .
RUN cd /src ; ./autogen.sh ; ./configure --without-miniupnpc --without-gui --disable-tests ; make -j8

FROM build AS publish
WORKDIR /app
COPY --from=build /src/src/einsteiniumd ./emc2d
COPY --from=build /src/src/einsteinium-cli ./emc2-cli
COPY *.sh ./
RUN chown -Rf root.root /app/*

FROM publish AS final
WORKDIR /app
COPY --from=publish /app ./
EXPOSE 28125
EXPOSE 28126
ENTRYPOINT ["/app/entrypoint.sh"]
