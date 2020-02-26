FROM ubuntu:18.04

RUN apt-get update -y && apt-get install -y jq unzip curl && \
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
    unzip awscliv2.zip && ./aws/install

WORKDIR /app

COPY . .

ENTRYPOINT [ "./main" ]
