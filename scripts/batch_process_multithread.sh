#!/bin/bash

#input_path="/home/yushen/workspace/sim_data_new/"
#output_path="/home/yushen/workspace/sim_data_new/cloth105_test/"

input_path="/home/davo/Desktop/Gan_data/data/sim_data_ori"
output_path="/home/davo/Desktop/Gan_data/data/train_data"




for c in $(seq 75 79)
do
	for m in $(seq 0 9)
	do
		for u in $(seq 0 9)
		do
   			echo "c $c  m $m  h $u"
			u8=`expr 8 \* $u`
			id0=`expr 0 + $u8`
			id1=`expr 1 + $u8`
			id2=`expr 2 + $u8`
			id3=`expr 3 + $u8`
			id4=`expr 4 + $u8`
			id5=`expr 5 + $u8`
			id6=`expr 6 + $u8`
			id7=`expr 7 + $u8`
			echo 0$c 0$m $id1
			../reconstruction/build/ProcessMesh 0 $c 0 $m $id1 $input_path $output_path &
			../reconstruction/build/ProcessMesh 0 $c 0 $m $id2 $input_path $output_path &
			../reconstruction/build/ProcessMesh 0 $c 0 $m $id3 $input_path $output_path &
			../reconstruction/build/ProcessMesh 0 $c 0 $m $id0 $input_path $output_path &
			../reconstruction/build/ProcessMesh 0 $c 0 $m $id4 $input_path $output_path &
			../reconstruction/build/ProcessMesh 0 $c 0 $m $id5 $input_path $output_path &
			../reconstruction/build/ProcessMesh 0 $c 0 $m $id6 $input_path $output_path &
			../reconstruction/build/ProcessMesh 0 $c 0 $m $id7 $input_path $output_path

			#python prepare_data.py $1 $2 $c $m $id0 &
			#python prepare_data.py $1 $2 $c $m $id1 &
			#python prepare_data.py $1 $2 $c $m $id2 &
			#python prepare_data.py $1 $2 $c $m $id3 &
			#python prepare_data.py $1 $2 $c $m $id4 &
			#python prepare_data.py $1 $2 $c $m $id5 &
			#python prepare_data.py $1 $2 $c $m $id6 &
			#python prepare_data.py $1 $2 $c $m $id7
			wait
		done
	done
done