FROM zapplecoins.azurecr.io/cryptobuild-1804:latest AS base

FROM base AS final
WORKDIR /src
RUN apt-get update ; apt-get install -y libgomp1 
RUN wget https://github.com/dogecoin/dogecoin/releases/download/v1.14.2/dogecoin-1.14.2-x86_64-linux-gnu.tar.gz
RUN tar -xzf dogecoin-1.14.2-x86_64-linux-gnu.tar.gz
WORKDIR /app
RUN mv /src/dogecoin-1.14.2/bin/dogecoind /app/doged ; mv /src/dogecoin-1.14.2/bin/dogecoin-cli doge-cli ; mv /src/dogecoin-1.14.2/lib/* /lib ;  rm -Rf /src 
COPY *.sh ./
RUN chown -Rf root.root /app/*
EXPOSE 28157
EXPOSE 28158
ENTRYPOINT ["/app/entrypoint.sh"]
