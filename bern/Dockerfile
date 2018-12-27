FROM cryptobuild:latest AS base

FROM base AS build
WORKDIR /src
RUN git clone https://github.com/BERNiecoin/BERNcash.git .
RUN cd /src/src ; make -f makefile.unix USE_UPNP=- -j8

FROM build AS publish
WORKDIR /app
COPY --from=build /src/src/BERNd ./bernd
COPY bitcoin-cli ./
COPY *.sh ./
RUN chown -Rf root.root /app/*

FROM publish AS final
WORKDIR /app
COPY --from=publish /app ./
RUN ln -s /app/.bern /root/.BERNcash
EXPOSE 20731
EXPOSE 20631
ENTRYPOINT ["/app/entrypoint.sh"]
