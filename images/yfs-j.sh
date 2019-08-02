#!/bin/bash


#declare -i m
#m=${max:-0}
#if test $m -eq 0; then

declare -i max=0
for f in $(ls /home/yfs/jupyter-dir/notebook/deep_learning/images | grep '\.png$' | cut -d '.' -f 1 | egrep '^[0-9]+$'); do
	#echo 'f=' $f
	test $max -lt $f && max=f
done

#	m=$max
#fi
#echo 'm:'$m
max=$max+1
gnome-screenshot -a -f "/home/yfs/jupyter-dir/notebook/deep_learning/images/${max}".png

