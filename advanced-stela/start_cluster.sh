#!/bin/bash
a=0

while [ $a -lt 1 ]
do

	echo $a
	cd /proj/Stella/logs/
	sudo rm -rf /proj/Stella/logs/*.log
	cd /tmp
	sudo rm /tmp/*.log
	sudo rm -rf /tmp/nimbus
	cd /var/zookeeper
	sudo rm -rf /var/zookeeper/*
	cd /var/nimbus/storm/logs
	sudo rm -rf /var/nimbus/storm/logs/*

	sudo killall java
	sleep 5s
	cd /var/stela/zookeeper-3.4.6
	sudo bin/zkServer.sh start

	for i in {1..6}
        do
               ssh node${i} "/users/lexu/advanced-stela/supervisor.sh  >> /dev/null &"
        done
        sleep 60s

	cd /var/nimbus/storm/lib
	#sudo mv advanced-stela-0.10.1-SNAPSHOT-jar-with-dependencies-btbv-with-logs.jar advanced-stela-0.10.1-SNAPSHOT-jar-with-dependencies.jar
	cd ..
	sudo bin/storm nimbus > /dev/null 2>&1 &
	sudo bin/storm ui > /dev/null 2>&1 &
	sleep 30s

	a=`expr $a + 1`
done
