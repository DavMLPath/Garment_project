#!/bin/bash

input_path="/home/davo/Desktop/Gan_data/data/sim_data_ori"
output_path="/home/davo/Desktop/Gan_data/data/train_data"

for c in $(seq 75 79)
do
	for m in $(seq 0 9)
	do
		for u in $(seq 0 7)
		do
   			echo "c $c  m $m  u $u"
			#../build/ProcessMesh_compare 2 $c $m $u
			echo $1 $2 $c $m $u
			python3 prepare_data.py $input_path $output_path $c $m $u
		done
	done
done