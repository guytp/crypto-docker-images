FROM cryptobuild:latest AS base

FROM base AS build
WORKDIR /src
RUN git clone https://github.com/BitBlocksProject/BitBlocks.git .
RUN cd /src ; chmod +x -Rf * ; ./autogen.sh ; ./configure --without-miniupnpc --without-gui --disable-tests ; make -j8
WORKDIR /app
RUN mv /src/src/bitblocksd ./bbkd
RUN mv /src/src/bitblocks-cli ./bbk-cli
COPY *.sh /app/
RUN chown -Rf root.root /app/*
RUN rm -Rf /src
EXPOSE 28149
EXPOSE 28150
ENTRYPOINT ["/app/entrypoint.sh"]
