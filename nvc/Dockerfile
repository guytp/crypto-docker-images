FROM cryptobuild:latest AS base

FROM base AS build
WORKDIR /src
RUN git clone https://github.com/novacoin-project/novacoin.git .
RUN cd src ; make -f makefile.unix -j8

FROM build AS publish
WORKDIR /app
COPY --from=build /src/src/novacoind ./nvcd
COPY bitcoin-cli ./
COPY *.sh ./
RUN chown -Rf root.root /app/*

FROM publish AS final
WORKDIR /app
COPY --from=publish /app ./
EXPOSE 28111
EXPOSE 28112
ENTRYPOINT ["/app/entrypoint.sh"]
