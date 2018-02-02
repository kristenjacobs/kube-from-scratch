#!/bin/bash

# Install docker.
apt-get update
apt-get install -y docker.io

# Disable swap
swapoff -a

# Adds our user to the docker group.
usermod -aG docker vagrant

# Pull down the hyperkube image.
docker pull gcr.io/google_containers/hyperkube:v1.9.0

# To see what hyperkube provides.. 
docker run gcr.io/google_containers/hyperkube:v1.9.0 /hyperkube --help
