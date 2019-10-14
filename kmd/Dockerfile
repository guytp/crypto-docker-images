FROM cryptobuild-1804:latest AS base

FROM base AS final
WORKDIR /src
RUN apt-get update ; apt-get install -y libgomp1 
RUN wget https://github.com/KomodoPlatform/komodo/releases/download/dev-linux-201910052307-6b797669/komodo_linux_dev.tar.gz
RUN tar -xzf komodo_linux_dev.tar.gz
RUN mkdir /app ; mv src/komodod /app/kmdd ; mv src/komodo-cli /app/.kmd-cli ; rm -Rf src komodo_linux_dev.tar.gz
WORKDIR /app
COPY *.sh ./
RUN chown -Rf root.root /app/*
EXPOSE 28135
EXPOSE 28136
ENTRYPOINT ["/app/entrypoint.sh"]
