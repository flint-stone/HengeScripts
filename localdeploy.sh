#!/bin/bash
set +x;
#set +e;
#sudo apt-get update
#sudo apt-get -y install fabric
#sudo cp ~/fabfile.py /var/nimbus/storm/
cd /var/nimbus/
sudo rm -rf storm/
sleep 10s
sudo tar -xvzf ~/apache-storm-0.10.1-SNAPSHOT.tar.gz
sudo mv apache-storm-0.10.1-SNAPSHOT storm
sudo cp ~/fabfile.py /var/nimbus/storm
cd storm/conf/
sudo cp ~/storm.yaml .
cd ../lib/
sudo cp ~/advanced-stela-0.10.1-SNAPSHOT-jar-with-dependencies.jar .
sudo cp ~/storm-core-0.10.1-SNAPSHOT.jar .
sudo cp ~/sysinfo-1.0-SNAPSHOT.one-jar.jar /var/nimbus/
sudo cp ~/libsigar-amd64-linux.so /var/nimbus/
#sudo mkdir /var/latencies/
#sudo chmod -R 777 /var/latencies/
