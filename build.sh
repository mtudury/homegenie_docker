#!/bin/bash

if [[ "${dhgversion}" == "" ]]; then
	echo "execute before : source latest_version.sh"
	exit 1
fi

pushd Docker
docker build -t homegenie:${dhgversion} .
popd
