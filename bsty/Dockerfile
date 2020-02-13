FROM zapplecoins.azurecr.io/cryptobuild-1804:latest AS base

FROM base AS final
WORKDIR /src
RUN apt-get update ; apt-get install -y libgomp1 
RUN wget https://github.com/GlobalBoost/GlobalBoost-Y/releases/download/v017.2/globalboost-0.17.1-x86_64-linux-gnu.2.tar.gz
RUN tar -xzf globalboost-0.17.1-x86_64-linux-gnu.2.tar.gz
WORKDIR /app
RUN mv /src/globalboost-0.17.1-x86_64-linux-gnu/globalboostd /app/bstyd ; mv /src/globalboost-0.17.1-x86_64-linux-gnu/globalboost-cli bsty-cli ; rm -Rf /src
COPY *.sh ./
RUN chown -Rf root.root /app/*
EXPOSE 28151
EXPOSE 28152
ENTRYPOINT ["/app/entrypoint.sh"]
