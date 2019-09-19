FROM cryptobuild:latest AS base

FROM base AS publish
WORKDIR /app
COPY ./ltzd ./
COPY ./ltz-cli ./
COPY *.sh ./
RUN chown -Rf root.root /app/*

FROM publish AS final
WORKDIR /app
COPY --from=publish /app ./
EXPOSE 29332
EXPOSE 29333
ENTRYPOINT ["/app/entrypoint.sh"]
