FROM cryptobuild-1804:latest AS base

FROM base AS final
WORKDIR /src
RUN apt-get update ; apt-get install -y libgomp1 
RUN wget https://github.com/KomodoPlatform/komodo/releases/download/0.6.0/linux64_0.6.0.tar.gz
RUN tar -xzf linux64_0.6.0.tar.gz
WORKDIR /app
RUN mv /src/linux64/komodod /app/kmdd ; mv /src/linux64/komodo-cli /app/kmd-cli ; rm -Rf /src
COPY *.sh ./
RUN chown -Rf root.root /app/*
EXPOSE 28135
EXPOSE 28136
ENTRYPOINT ["/app/entrypoint.sh"]
