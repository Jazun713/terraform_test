#!/usr/bin/env bash

ip=$(ifconfig eth0 | grep 'inet addr' | awk '{ print substr($2,6) }')
consul agent -advertise $ip -config-file /etc/systemd/consul/common.json -up