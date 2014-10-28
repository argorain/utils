#!/bin/bash
if [ $# == 1 ] ; then
	for f in $(find $1 -name '*.c' -or -name '*.h'); do 
		echo $f; 
		recode ISO-8859-2..UTF8 $f
	done
else
	echo "Not enough params. Please add directory."
fi