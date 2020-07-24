FROM cryptobuild-1804:latest AS runtime
RUN apt-get -y update ; apt-get install -y libsodium-dev libcurl4-openssl-dev build-essential libtool autotools-dev automake pkg-config bsdmainutils python3 libc6-dev m4 g++-multilib autoconf ncurses-dev unzip git wget curl zlib1g-dev

FROM runtime AS build
WORKDIR /src
RUN wget -O src.tar.gz https://codeload.github.com/litecoinz-project/litecoinz/tar.gz/v2.0.4 
RUN tar -xzf src.tar.gz
WORKDIR /src/litecoinz-2.0.4
RUN ./autogen.sh 
RUN cd zcutil ; ./build.sh

FROM runtime AS final
WORKDIR /app
COPY --from=build /src/litecoinz-2.0.4/src/litecoinzd ./ltzd
COPY --from=build /src/litecoinz-2.0.4/src/litecoinz-cli ./ltz-cli
COPY *.sh ./
RUN chown -Rf root.root /app/*
EXPOSE 29332
EXPOSE 29333
ENTRYPOINT ["/app/entrypoint.sh"]
