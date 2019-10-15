FROM cryptobuild-1804:latest AS base

FROM base AS final
WORKDIR /src
RUN apt-get install -y unzip wget
RUN wget https://blackcoinmore.org/files/blackcoin-more-linux64-v2.13.2.3-c7eef36834.zip ; unzip blackcoin-more-linux64-v2.13.2.3-c7eef36834.zip
WORKDIR /app
RUN cp /src/blackmored /app/blkd
RUN cp /src/blackmore-cli /app/blk-cli
COPY *.sh ./
RUN chown -Rf root.root /app/*
RUN rm -Rf /src
EXPOSE 28137
EXPOSE 28138
ENTRYPOINT ["/app/entrypoint.sh"]
