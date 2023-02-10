#!/bin/bash

input_path="/home/davo/Desktop/Gan_data/data/sim_data_ori"
output_path="/home/davo/Desktop/Gan_data/data/train_data"

for c in $(seq 75 79)
do
	for m in $(seq 0 9)
	do
		for u in $(seq 0 9)
		do
   			echo "c 0$c  m 0$m  h 0$u"
   			build/ProcessMesh $c $m $u $input_path $output_path
		done
	done
done