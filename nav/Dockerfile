FROM cryptobuild-1804:latest AS final
WORKDIR /src
RUN wget https://github.com/navcoin/navcoin-core/releases/download/5.0.1/navcoin-5.0.1-i686-pc-linux-gnu.tar.gz
RUN tar -xzf navcoin-5.0.1-i686-pc-linux-gnu.tar.gz
WORKDIR /app
RUN mv /src/navcoin-5.0.1/bin/navcoind ./navd
RUN mv /src/navcoin-5.0.1/bin/navcoin-cli ./nav-cli
RUN rm -Rf /src
COPY *.sh ./
RUN chown -Rf root.root /app/*
EXPOSE 28139
EXPOSE 28140
ENTRYPOINT ["/app/entrypoint.sh"]
