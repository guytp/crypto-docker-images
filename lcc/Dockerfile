FROM cryptobuild-1804:latest AS base

FROM base AS final
WORKDIR /src
RUN wget https://github.com/litecoincash-project/litecoincash/releases/download/v0.16.1.1/litecoincash-0.16.1.1-x86_64-linux-gnu.tar.gz
RUN tar -xzf litecoincash-0.16.1.1-x86_64-linux-gnu.tar.gz
RUN mkdir /app ; cd litecoincash-0.16.1/bin ; cp litecoincashd /app/lccd ; cp litecoincash-cli /app/lcc-cli
WORKDIR /app
COPY *.sh ./
RUN chown -Rf root.root /app/* ; rm -Rf /src
EXPOSE 28117
EXPOSE 28118
ENTRYPOINT ["/app/entrypoint.sh"]
