#!/bin/bash
set -x;
a=0


	./start_cluster_scale.sh
	sleep 2m

	cd /var/nimbus/storm/
	for i in {1..6}
	do
		sudo bin/storm jar ~/storm-starter-0*.jar storm.starter.StarTopology_12_lexu star${i} remote
	done
	for i in {1..6}
	do
		sudo bin/storm jar ~/storm-starter-0*.jar storm.starter.LinearTopology_12_lexu linear${i} remote
	done
	for i in {1..8}
	do
		sudo bin/storm jar ~/storm-starter-0*.jar storm.starter.DiamondTopology_12_lexu diamond${i} remote
	done
	for i in {1..20}
	do	
		sudo bin/storm jar ~/storm-starter-0*.jar storm.starter.PageLoadTopology_Lexu_12 pageload${i} remote
	done

	#sleep 120m

	#for i in {1..6}
	#do
	#	sudo bin/storm kill star${i}
	#done
	#for i in {1..6}
	#do
#		sudo bin/storm kill linear${i}
#	done
#	for i in {1..8}
#	do
#		sudo bin/storm kill diamond${i}
#	done
#	for i in {1..20}
#		sudo bin/storm kill pageload${i}
#	done

#	foldername=$(date +"%Y-%m-%d-%T")+"exp_scale_12_40nodes"
	#logname=$(date+%Y-%m-%d-%T)+"BTBV.log"
#	mkdir -p /proj/Stella/henge-experiments/"$foldername"/
#	sudo cp /tmp/*.log /proj/Stella/henge-experiments/"$foldername"/
#	sudo cp /var/nimbus/storm/logs/*.log /proj/Stella/henge-experiments/"$foldername"/
	#sudo mv ~/henge-experiments/HengeResults/"$foldername"/output.log ~/henge-experiments/HengeResults/"$foldername"/"$logname"


	#cd lib
	#sudo mv advanced-stela-0.10.1-SNAPSHOT-jar-with-dependencies.jar  advanced-stela-0.10.1-SNAPSHOT-jar-with-dependencies-btbv-with-logs.jar

