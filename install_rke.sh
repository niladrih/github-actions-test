#!/bin/bash

#Install latest version of rke
which curl &> /dev/null || apt-get install -y curl || yum install -y curl || dnf install -y curl || (echo "Couldn't install curl" && exit 1)

mkdir -p /usr/local/bin || (echo "Failed to create directory" && exit 1)

curl -fSsL https://github.com/rancher/rke/releases/latest/download/rke_linux-amd64 -o /usr/local/bin/rke && chmod +x /usr/local/bin/rke || (echo "Couldn't install rke binary" && exit 1)
