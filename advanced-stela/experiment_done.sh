#!/bin/bash
set -x;
a=0



	cd /var/nimbus/storm/

	foldername=$(date +"%Y-%m-%d-%T")+"exp_scale_12_40nodes"
	#logname=$(date+%Y-%m-%d-%T)+"BTBV.log"
	mkdir -p /proj/Stella/henge-experiments/"$foldername"/
	sudo cp /tmp/*.log /proj/Stella/henge-experiments/"$foldername"/
	sudo cp /var/nimbus/storm/logs/*.log /proj/Stella/henge-experiments/"$foldername"/
	#sudo mv ~/henge-experiments/HengeResults/"$foldername"/output.log ~/henge-experiments/HengeResults/"$foldername"/"$logname"


	#cd lib
	#sudo mv advanced-stela-0.10.1-SNAPSHOT-jar-with-dependencies.jar  advanced-stela-0.10.1-SNAPSHOT-jar-with-dependencies-btbv-with-logs.jar

