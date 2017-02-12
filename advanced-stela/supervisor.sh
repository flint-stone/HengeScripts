#!/bin/sh
set +x
sudo killall java
sudo rm -r /tmp/zookeeper/
sudo rm -r /tmp/storm/
sudo rm -rf /tmp/*.log
sudo rm -rf /var/latencies/*
sudo rm -rf /proj/Stella/advanced-stela/*
sudo rm -rf /proj/Stella/latency-logs/*
#sudo rm -r /var/storm/storm_0/logs/
#sudo rm -r /var/storm/apache-storm-0.10.1/logs/
sudo rm -rf /var/nimbus/storm/logs/*
#cd /var/storm/storm_0/bin
sudo mkdir /var/latencies/
sudo chmod -R 777 /var/latencies/
cd /var/nimbus/storm
java -Djava.library.path=/var/nimbus/ -jar /var/nimbus/sysinfo-1.0-SNAPSHOT.one-jar.jar &

cd /var/nimbus/storm/bin
#cd /var/storm/apache-storm-0.10.1/bin
sudo ./storm supervisor &

