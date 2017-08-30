#!/bin/bash

chown -R rabbitmq:rabbitmq /var/lib/rabbitmq || exit $?
chmod 777 /var/lib/rabbitmq /etc/rabbitmq || exit $?

source /usr/local/bin/rancher-secrets.sh

/usr/local/bin/docker-entrypoint $@