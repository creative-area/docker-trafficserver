#!/bin/bash

set -e

# ip_allow.config
echo '
src_ip=127.0.0.1                                  action=ip_allow method=ALL
src_ip=::1                                        action=ip_allow method=ALL
src_ip=172.16.0.0/12                              action=ip_allow method=ALL
src_ip=10.0.0.0/8                                 action=ip_allow method=ALL
src_ip=0.0.0.0-255.255.255.255                    action=ip_deny  method=PUSH|PURGE|DELETE
src_ip=::-ffff:ffff:ffff:ffff:ffff:ffff:ffff:ffff action=ip_deny  method=PUSH|PURGE|DELETE
' > /opt/ts/etc/trafficserver/ip_allow.config

# storage.config
echo "var/trafficserver $TS_STORAGE_SIZE" > /opt/ts/etc/trafficserver/storage.config

exec /opt/ts/bin/traffic_manager
