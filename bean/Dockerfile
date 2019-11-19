FROM cryptobuild-1804:latest AS base

FROM base AS final
WORKDIR /app
RUN wget http://www.beancash.org/downloads/Beancash-Linux64v1122RC.tar.gz
RUN tar -xzf Beancash-Linux64v1122RC.tar.gz
COPY ./bean-cli /app/bean-cli
RUN mv Beancash-Linux64v1122RC/Beancashd /app/beand
RUN rm -Rf Beancash-Linux64v1122RC.tar.gz Beancash-Linux64v1122RC
RUN chown -Rf root.root /app/*
EXPOSE 28145
EXPOSE 28146
ENTRYPOINT ["/app/entrypoint.sh"]
