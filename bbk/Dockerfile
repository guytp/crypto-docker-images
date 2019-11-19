FROM cryptobuild:latest AS base

FROM base AS build
WORKDIR /src
RUN git clone https://github.com/BitBlocksProject/BitBlocks.git .
RUN cd /src ; ./autogen.sh ; ./configure --without-miniupnpc --without-gui --disable-tests ; make -j8
WORKDIR /app
COPY --from=build /src/src/bitblocksd ./bbkd
COPY --from=build /src/src/bitblocks-cli ./bbk-cli
COPY *.sh ./
RUN chown -Rf root.root /app/*
RUN rm -Rf /src
WORKDIR /app
COPY --from=publish /app ./
EXPOSE 28149
EXPOSE 28150
ENTRYPOINT ["/app/entrypoint.sh"]
