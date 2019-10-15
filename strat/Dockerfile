FROM microsoft/dotnet:2.1-sdk

RUN git clone https://github.com/stratisproject/StratisBitcoinFullNode.git 
WORKDIR  /StratisBitcoinFullNode/src/Stratis.StratisD 
RUN dotnet build
	
WORKDIR /app
COPY *.sh /app/
COPY bitcoin-cli /app/strat-cli
RUN chmod 755 *.sh

EXPOSE 28141
EXPOSE 28142

ENTRYPOINT ["/app/entrypoint.sh"]
