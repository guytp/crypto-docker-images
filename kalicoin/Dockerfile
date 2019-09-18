FROM cryptobuild:latest AS base

FROM base AS build
WORKDIR /src
RUN git clone https://github.com/Kalicoin/kalicoin-core.git .
RUN cd src ; make -f makefile.unix

FROM build AS publish
WORKDIR /app
COPY --from=build /src/src/kalicoind ./kalid
COPY bitcoin-cli ./
COPY *.sh ./
RUN chown -Rf root.root /app/*

FROM publish AS final
WORKDIR /app
COPY --from=publish /app ./
EXPOSE 55884
EXPOSE 55883
ENTRYPOINT ["/app/entrypoint.sh"]
