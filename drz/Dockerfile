FROM cryptobuild:latest AS base

FROM base AS build
WORKDIR /src
RUN git clone https://github.com/chainworksindustries/droidz .
RUN cd /src/src/secp256k1 ; ./autogen.sh ; ./configure ; make ; make install
RUN cd /src/src ; make -f makefile.unix -j8

FROM build AS publish
WORKDIR /app
COPY --from=build /src/src/droidzd ./droidzd
COPY --from=build /usr/local/lib/libsecp* /usr/local/lib/
COPY --from=build /usr/local/lib/pkgconfig/libsecp256k1.pc /usr/local/lib/pkgconfig/libsecp256k1.pc
COPY bitcoin-cli ./
COPY *.sh ./
#root@ZAP-AZEUS-CN-01:/usr/local/lib# rm libsecp256k1.so.0*
#root@ZAP-AZEUS-CN-01:/usr/local/lib# ln -s libsecp256k1.so libsecp256k1.so.0
#root@ZAP-AZEUS-CN-01:/usr/local/lib# ln -s libsecp256k1.so libsecp256k1.so.0.0.0
#root@ZAP-AZEUS-CN-01:/usr/local/lib# ldconfig
#root@ZAP-AZEUS-CN-01:/usr/local/lib#
RUN chown -Rf root.root /app/*

FROM publish AS final
WORKDIR /app
COPY --from=publish /app ./
EXPOSE 5914
EXPOSE 5915
ENTRYPOINT ["/app/entrypoint.sh"]
