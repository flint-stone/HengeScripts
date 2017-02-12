#!/bin/bash
set -x;
a=0


	./start_cluster_scale.sh
	sleep 2m

	cd /var/nimbus/storm/
	for i in {1..3}
	do
		sudo bin/storm jar ~/storm-starter-0*.jar storm.starter.StarTopology_12_lexu star${i} remote
		sudo bin/storm jar ~/storm-starter-0*.jar storm.starter.StarTopology_13_lexu star${i}_1 remote
	done
	for i in {1..3}
	do
		sudo bin/storm jar ~/storm-starter-0*.jar storm.starter.LinearTopology_12_lexu linear${i} remote
		sudo bin/storm jar ~/storm-starter-0*.jar storm.starter.LinearTopology_13_lexu linear${i}_1 remote		
	done
	for i in {1..4}
	do
		sudo bin/storm jar ~/storm-starter-0*.jar storm.starter.DiamondTopology_12_lexu diamond${i} remote
		sudo bin/storm jar ~/storm-starter-0*.jar storm.starter.DiamondTopology_13_lexu diamond${i}_1 remote
	done
	for i in {1..10}
	do	
		sudo bin/storm jar ~/storm-starter-0*.jar storm.starter.PageLoadTopology_Lexu_12 pageload${i} remote
		sudo bin/storm jar ~/storm-starter-0*.jar storm.starter.PageLoadTopology_Lexu_13 pageload${i}_1 remote
	done


