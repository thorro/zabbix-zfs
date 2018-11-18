# zabbix-zfs

Simple zabbix script and template to auto-discover zfs pools and filesystems. Used mostly to monitor and trigger on pool degradation. Also shows pool/dataset usage.

Works without sudo on Debian, YMMV. Tested on Zabbix 4.0.

# Usage

## Clone this repo
git clone https://github.com/thorro/zabbix-zfs.git

## Copy discovery script to bin dir
cp -a bin/zfs-discovery.sh /usr/local/bin
### Try it out
/usr/local/bin/zfs-discovery.sh pooldisc

## Copy zabbix commands to zabbix config dir
cp conf/zfs.conf /etc/zabbix/zabbix-agentd.d/

## Import template to Zabbix
At Configuration/Templates

## Add template to host
Profit!

# Credits

Based on thread: https://www.zabbix.com/forum/zabbix-cookbook/35336-zabbix-zfs-discovery-monitoring
