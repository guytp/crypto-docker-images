FROM cryptobuild:latest AS base

FROM base AS build
WORKDIR /src
RUN git clone https://github.com/primecoin/primecoin.git .
RUN cd src ; make -f makefile.unix -j8

FROM build AS publish
WORKDIR /app
COPY --from=build /src/src/primecoind ./xpmd
COPY bitcoin-cli ./
COPY *.sh ./
RUN chown -Rf root.root /app/*

FROM publish AS final
WORKDIR /app
COPY --from=publish /app ./
EXPOSE 9911
EXPOSE 9912
ENTRYPOINT ["/app/entrypoint.sh"]
