FROM cryptobuild:latest AS base

FROM base AS build
WORKDIR /src
RUN git clone https://github.com/chainworksindustries/droidz .
RUN cd /src/src/secp256k1 ; ./autogen.sh ; ./configure ; make ; make install
RUN cd /src/src ; make -f makefile.unix -j8

FROM build AS publish
WORKDIR /app
COPY --from=build /src/src/droidzd ./drzd
COPY --from=build /usr/local/lib/libsecp* /usr/local/lib/
COPY --from=build /usr/local/lib/pkgconfig/libsecp256k1.pc /usr/local/lib/pkgconfig/libsecp256k1.pc
RUN cd /usr/local/lib ; rm libsecp256k1.so.0 ; ln -s libsecp256k1.so libsecp256k1.so.0 ; ldconfig
COPY bitcoin-cli ./
COPY *.sh ./
RUN chown -Rf root.root /app/*

FROM publish AS final
WORKDIR /app
COPY --from=publish /app ./
EXPOSE 5914
EXPOSE 5915
ENTRYPOINT ["/app/entrypoint.sh"]
