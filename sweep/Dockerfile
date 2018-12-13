FROM cryptobuild:latest AS base

FROM base AS build
WORKDIR /src
RUN git clone https://github.com/chainworksindustries/sweepstakecoin-wip.git .
RUN cd /src ; git checkout 2cc44248478fb5878e61df553a1ce4b0dceb11b5
RUN cd /src/src/leveldb ; chmod +x build_detect_platform ; make libleveldb.a libmemenv.a -j8
RUN cd /src/src ; make -f makefile.unix USE_UPNP=- -j8

FROM build AS publish
WORKDIR /app
COPY --from=build /src/src/SweepstakeCoind ./sweepd
COPY bitcoin-cli ./
COPY *.sh ./
RUN chown -Rf root.root /app/*

FROM publish AS final
WORKDIR /app
COPY --from=publish /app ./
RUN ln -s /app/.sweep /root/.SweepstakeCoin
EXPOSE 17570
EXPOSE 17571
ENTRYPOINT ["/app/entrypoint.sh"]
