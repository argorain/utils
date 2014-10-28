#!/bin/bash
if [ $# == 1 ] ; then
	for f in $(find $1 -name '*.c' -or -name '*.h'); do 
		echo $f; 
		recode UTF8..ISO-8859-2 $f
	done
else
	echo "Not enough params. Please add directory."
fi