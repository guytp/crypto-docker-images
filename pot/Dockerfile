FROM cryptobuild:latest AS base

FROM base AS build
WORKDIR /src
RUN git clone https://github.com/potcoin/Potcoin.git .
RUN cd src ; CXXFLAGS="$CXXFLAGS -DBOOST_VARIANT_USE_RELAXED_GET_BY_DEFAULT=1" make -f makefile.unix -j8

FROM build AS publish
WORKDIR /app
COPY --from=build /src/src/potcoind ./potd
COPY bitcoin-cli ./
COPY *.sh ./
RUN chown -Rf root.root /app/*

FROM publish AS final
WORKDIR /app
COPY --from=publish /app ./
EXPOSE 28121
EXPOSE 28122
ENTRYPOINT ["/app/entrypoint.sh"]
