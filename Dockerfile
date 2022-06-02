# syntax=docker/dockerfile:1
FROM azul/zulu-openjdk-alpine:8

RUN apk add --update --no-cache bash curl
RUN curl https://dlcdn.apache.org/spark/spark-3.0.3/spark-3.0.3-bin-hadoop2.7.tgz > spark-bin-hadoop.tgz
RUN tar -xvzf spark-bin-hadoop.tgz && mv spark-3.0.3-bin-hadoop2.7 bin/. && rm -rf spark-3.0.3-bin-hadoop2.7
