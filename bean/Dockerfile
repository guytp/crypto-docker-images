FROM cryptobuild:latest AS base

FROM base AS build
WORKDIR /src
RUN apt-get update ; apt-get --assume-yes install libdb5.3++-dev

FROM build AS publish
WORKDIR /app
COPY ./beand ./
COPY ./bitcoin-cli ./
COPY *.sh ./
RUN chown -Rf root.root /app/*

FROM publish AS final
WORKDIR /app
COPY --from=publish /app ./
EXPOSE 28113
EXPOSE 28114
ENTRYPOINT ["/app/entrypoint.sh"]
