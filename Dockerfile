FROM ubuntu:22.04

RUN apt update && apt install -y wget unzip screen libcurl4 libssl3

WORKDIR /server

RUN wget https://minecraft.net/bin-linux/bedrock-server-1.21.51.01.zip -O bedrock.zip \
    && unzip bedrock.zip \
    && rm bedrock.zip

CMD ["./bedrock_server"]
