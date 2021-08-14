# Zimbra Monitoring on Grafana
## Configuration Telegraf


```sh
wget https://github.com/kzltp/grafana_zimbra/archive/refs/heads/main.zip
unzip main.zip
mv /etc/telegraf/telegraf.conf /etc/telegraf/telegraf.conf_ori
cp grafana_zimbra-main/telegraf.conf /etc/telegraf
cp  grafana_zimbra-main/checkzimbrastatus.sh /opt/zimbra/common/bin/
cp grafana_zimbra-main/checkzimbraversion.sh /opt/zimbra/common/bin/
echo "* * * * * /usr/sbin/service zimbra status > /tmp/status.tmp" >> /etc/crontab
```
and import Zimbra-Dasboard.json file on grafana.

![alt text](https://ibb.co/4NR4nzn)
