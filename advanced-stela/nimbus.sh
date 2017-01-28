tar -xvf apache-storm-0.10.1-SNAPSHOT.tar.gz
sudo mv apache-storm-0.10.1-SNAPSHOT /var/nimbus
#cd /var/stela/zookeeper-3.4.6
#sudo bin/zkServer.sh start
cd /var/nimbus/apache-storm-0.10.1-SNAPSHOT
sudo cp /users/Richam12/storm.yaml conf
cd /var/stela/zookeeper-3.4.6
sudo bin/zkServer.sh start
#cd /var/nimbus/storm/examples/storm-starter
#sudo rm storm-starter-0.10.1-SNAPSHOT.jar
#cd /var/nimbus/storm/lib
#sudo rm advanced-stela-0.10.1-SNAPSHOT-jar-with-dependencies.jar
cd ~
#sudo cp storm-starter-0.10.1-SNAPSHOT.jar /var/nimbus/storm/examples/storm-starter
sudo cp /users/Richam12/advanced-stela-0.10.1-SNAPSHOT-jar-with-dependencies.jar /var/nimbus/apache-storm-0.10.1-SNAPSHOT/lib
sudo cp /users/Richam12/storm-starter-0.10.1-SNAPSHOT.jar /var/nimbus/apache-storm-0.10.1-SNAPSHOT/examples/storm-starter
#sudo cp /users/Richam12/storm-core-0.10.0.jar /var/nimbus/apache-storm-0.10.1-SNAPSHOT/lib
#cd /var/nimbus/apache-storm-0.10.1-SNAPSHOT/lib
#sudo rm storm-core-0.10.1-SNAPSHOT.jar

