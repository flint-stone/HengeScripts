#!/bin/bash
./localdeploy.sh;
for i in {1..6}
do
	ssh node${i} './localdeploy.sh > /dev/null ; hostname'
done;
