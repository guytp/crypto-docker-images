FROM cryptobuild-1804:latest AS final
WORKDIR /app
RUN wget https://github.com/litecoinz-project/litecoinz/releases/download/v2.0.3/litecoinz-2.0.3-x86_64-linux-gnu.tar.gz
RUN tar -xzf litecoinz-2.0.3-x86_64-linux-gnu.tar.gz ; rm litecoinz-2.0.3-x86_64-linux-gnu.tar.gz
RUN mv litecoinz-2.0.3/bin/litecoinz-cli ltz-cli ; mv litecoinz-2.0.3/bin/litecoinzd ./ltzd
RUN rm -Rf litecoinz-2.0.3
COPY *.sh ./
RUN chown -Rf root.root /app/*
EXPOSE 29332
EXPOSE 29333
ENTRYPOINT ["/app/entrypoint.sh"]
