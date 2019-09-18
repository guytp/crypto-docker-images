FROM cryptobuild-1804 AS build
#COPY build ./
#RUN /bin/bash ./build

FROM build as publish
WORKDIR /app
COPY vcashd ./xvcd
COPY *.sh ./
RUN chown -Rf root.root /app/* ; rm -Rf /src

FROM publish AS final
WORKDIR /app
COPY --from=publish /app ./
EXPOSE 50603
EXPOSE 50604
ENTRYPOINT ["/app/entrypoint.sh"]
