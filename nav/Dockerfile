FROM cryptobuild-1804:latest AS base

FROM base AS build
WORKDIR /src
RUN git clone https://github.com/navcoin/navcoin-core.git .
RUN cd /src ; mkdir unbound ; cd unbound ; wget https://nlnetlabs.nl/downloads/unbound/unbound-1.7.3.tar.gz ; tar xvfz unbound-1.7.3.tar.gz ; cd unbound-1.7.3/ ; ./configure ; make ; make install ; rm -Rf /src/unbound
RUN apt-get update ; apt-get install  -y libcurl4-openssl-dev
RUN add-apt-repository ppa:bitcoin/bitcoin ; apt-get update ;  apt-get install -y libdb4.8-dev libdb4.8++-dev
RUN cd /src ; ./autogen.sh ; ./configure --disable-shared --without-miniupnpc --without-gui --disable-tests ; make -j8

FROM build AS publish
WORKDIR /app
COPY --from=build /src/src/navcoind ./navd
COPY --from=build /src/src/navcoin-cli ./nav-cli
COPY *.sh ./
RUN chown -Rf root.root /app/*

FROM publish AS final
WORKDIR /app
COPY --from=publish /app ./
EXPOSE 28139
EXPOSE 28140
ENTRYPOINT ["/app/entrypoint.sh"]
