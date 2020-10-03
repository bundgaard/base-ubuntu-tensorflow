#!/bin/bash

TMPFILE=$(mktemp)
TAR=$(which tar)
TAR_OPTS="-C /usr/local -xf"
CURL=$(which curl)
CURL_OPTS="-L -# -o ${TMPFILE}"

TENSORFLOW_CPU_LIB_URL=https://storage.googleapis.com/tensorflow/libtensorflow/libtensorflow-cpu-linux-x86_64-2.3.0.tar.gz

${CURL} ${CURL_OPTS} ${TENSORFLOW_CPU_LIB_URL}

${TAR} ${TAR_OPTS} ${TMPFILE}

