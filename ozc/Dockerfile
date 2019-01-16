FROM cryptobuild:latest AS base

FROM base AS build
WORKDIR /src
RUN git clone https://github.com/chainworksindustries/ozziecoin.git .
RUN cd src ; make -f makefile.unix -j8
#https://github.com/chainworksindustries/ozc .
#RUN ./autogen.sh ; ./configure --without-miniupnpc --disable-wallet --without-gui --disable-tests ; make -j8

FROM build AS publish
WORKDIR /app
COPY --from=build /src/src/ozziecoind ./ozcd
COPY bitcoin-cli ./
COPY *.sh ./
RUN chown -Rf root.root /app/*

FROM publish AS final
WORKDIR /app
COPY --from=publish /app ./
EXPOSE 39052
EXPOSE 39053
ENTRYPOINT ["/app/entrypoint.sh"]
