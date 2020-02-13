FROM cryptobuild-1804:latest AS base

FROM base AS final
WORKDIR /app
RUN wget https://github.com/nochowderforyou/clams/releases/download/v1.4.17/clam-1.4.17-linux64.tar.gz
RUN tar -xzf clam-1.4.17-linux64.tar.gz
COPY ./clam-cli /app/clam-cli
RUN mv clam-1.4.17/bin/clamd /app/clamd
RUN rm -Rf clam-1.4.17-linux64.tar.gz clam-1.4.17
RUN chown -Rf root.root /app/*
COPY *.sh /app/
EXPOSE 28147
EXPOSE 28148
ENTRYPOINT ["/app/entrypoint.sh"]
