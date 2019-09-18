FROM cryptobuild:latest AS base

FROM base AS publish
WORKDIR /app
RUN wget https://www.asofe.org/files/deb/asofe-1.1.0-1-Ubuntu16.04-amd64.deb
RUN dpkg -i ./asofe-1.1.0-1-Ubuntu16.04-amd64.deb
RUN rm *.deb ; cp /usr/bin/asofe-cli ./asf-cli ; cp /usr/bin/asofed ./asfd
COPY *.sh ./
RUN chown -Rf root.root /app/*

FROM publish AS final
WORKDIR /app
COPY --from=publish /app ./
EXPOSE 61211
EXPOSE 61212
ENTRYPOINT ["/app/entrypoint.sh"]
