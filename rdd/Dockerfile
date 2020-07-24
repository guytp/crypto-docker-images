FROM cryptobuild:latest AS base

WORKDIR /src
RUN wget https://download.reddcoin.com/bin/reddcoin-core-3.10.1/reddcoin-3.10.1-linux64.tar.gz
RUN tar -xzf reddcoin-3.10.1-linux64.tar.gz
WORKDIR /app
RUN cp /src/reddcoin-3.10.1/bin/reddcoind ./rddd
RUN cp /src/reddcoin-3.10.1/bin/reddcoin-cli ./rdd-cli
COPY *.sh ./
RUN rm -Rf /src
RUN chown -Rf root.root /app/*

EXPOSE 28119
EXPOSE 28120
ENTRYPOINT ["/app/entrypoint.sh"]
