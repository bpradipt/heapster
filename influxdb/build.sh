#! /bin/bash

ARCH=$( uname -m )
pushd $( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
if [ ${ARCH} == "x86_64" ]; then
	docker build -t heapster_influxdb:canary -f Dockerfile .
elif [ ${ARCH} == "ppc64le" ]; then
	docker build -t heapster_influxdb:canary -f Dockerfile.ppc64le .
fi
popd
