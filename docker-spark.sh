#!/usr/bin/env bash

docker run --rm -it \
    -v ${PWD}/:/spark-workspace \
    -w /spark-workspace \
    realstraw/spark:latest /bin/spark-3.0.3-bin-hadoop2.7/bin/$@
