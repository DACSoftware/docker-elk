#!/bin/bash

source /usr/local/bin/rancher-secrets.sh

/usr/local/bin/docker-entrypoint $@
