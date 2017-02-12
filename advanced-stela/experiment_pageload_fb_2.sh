#!/bin/bash
set -x;
a=0


	./start_cluster_5.sh
	sleep 2m

	cd /var/nimbus/storm/
	for i in 1
	do	
		 sudo bin/storm jar ~/storm-starter-0*.jar storm.starter.PageLoadTopology_lexu_FB pageLoad${i} remote
	done;
	#sudo bin/storm jar ~/storm-starter-0*.jar storm.starter.StarTopology_7_lexu star remote
	#sudo bin/storm jar ~/storm-starter-0*.jar storm.starter.LinearTopology_7_lexu linear remote
	#sudo bin/storm jar ~/storm-starter-0*.jar storm.starter.DiamondTopology_7_lexu diamond remote
	sleep 500m
	for i in 1
	do
		sudo bin/storm kill pageLoad${i}
	done;
	#sudo bin/storm kill star
	#sudo bin/storm kill linear
	#sudo bin/storm kill diamond
	foldername=$(date +"%Y-%m-%d-%T")+"pageLoad_diurnal_fb_2"
	#logname=$(date+%Y-%m-%d-%T)+"BTBV.log"
	mkdir -p /proj/Stella/henge-experiments/"$foldername"/
	sudo cp /tmp/*.log /proj/Stella/henge-experiments/"$foldername"/
	sudo cp /var/nimbus/storm/logs/*.log /proj/Stella/henge-experiments/"$foldername"/
	#sudo mv ~/henge-experiments/HengeResults/"$foldername"/output.log ~/henge-experiments/HengeResults/"$foldername"/"$logname"


	#cd lib
	#sudo mv advanced-stela-0.10.1-SNAPSHOT-jar-with-dependencies.jar  advanced-stela-0.10.1-SNAPSHOT-jar-with-dependencies-btbv-with-logs.jar

