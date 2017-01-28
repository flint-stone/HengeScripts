#!/bin/bash
set -x;
a=0


	./start_cluster_5.sh
	sleep 2m

	cd /var/nimbus/storm/
	sudo bin/storm jar ~/storm-starter-0*.jar storm.starter.StarTopology_3_lexu star remote
	sudo bin/storm jar ~/storm-starter-0*.jar storm.starter.LinearTopology_3_lexu linear remote
	sudo bin/storm jar ~/storm-starter-0*.jar storm.starter.DiamondTopology_3_diurnal_lexu diamond remote
	sleep 240m
	sudo bin/storm kill star
	sudo bin/storm kill linear
	sudo bin/storm kill diamond
	foldername=$(date +"%Y-%m-%d-%T")+"micro_mix_3_diamond_diurnal"
	#logname=$(date+%Y-%m-%d-%T)+"BTBV.log"
	mkdir -p /proj/Stella/henge-experiments/"$foldername"/
	sudo cp /tmp/*.log /proj/Stella/henge-experiments/"$foldername"/
	sudo cp /var/nimbus/storm/logs/*.log /proj/Stella/henge-experiments/"$foldername"/
	#sudo mv ~/henge-experiments/HengeResults/"$foldername"/output.log ~/henge-experiments/HengeResults/"$foldername"/"$logname"


	#cd lib
	#sudo mv advanced-stela-0.10.1-SNAPSHOT-jar-with-dependencies.jar  advanced-stela-0.10.1-SNAPSHOT-jar-with-dependencies-btbv-with-logs.jar

