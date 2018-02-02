#!/bin/bash
docker run \
    --net=host \
    --pid=host \
    --privileged \
    -v /dev:/dev \
    -v /sys:/sys \
    -v /var/run:/var/run \
    -v /var/lib/docker/:/var/lib/docker \
    -v /var/lib/kubelet/:/var/lib/kubelet \
    -v /var/log:/var/log \
    -v /srv/kubernetes:/srv/kubernetes \
    -v /etc/kubernetes:/etc/kubernetes \
    -v /tmp/kubernetes/manifests:/tmp/kubernetes/manifests -v \
    /var/run/docker.sock:/var/run/docker.sock gcr.io/google_containers/hyperkube:v1.9.0 \
        /hyperkube kubelet --pod-manifest-path=/tmp/kubernetes/manifests
