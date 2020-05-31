FROM cryptobuild-1804:latest AS base

FROM base AS final
WORKDIR /app
RUN wget https://github.com/RavenProject/Ravencoin/releases/download/v4.1.0/raven-4.1.0.0-x86_64-linux-gnu.tar.gz
RUN tar -xzf raven-4.1.0.0-x86_64-linux-gnu.tar.gz
RUN mv raven-4.1.0.0/bin/raven-cli /app/rvn-cli
RUN mv raven-4.1.0.0/bin/ravend /app/rvnd
RUN rm -Rf raven-4.1.0.0-x86_64-linux-gnu.tar.gz raven-4.1.0.0
RUN chown -Rf root.root /app/*
COPY *.sh /app/
EXPOSE 28143
EXPOSE 28144
ENTRYPOINT ["/app/entrypoint.sh"]
