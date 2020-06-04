#!/bin/bash

ext=$(lscpu | grep -oP "Flags:\s*\K.+")
compext="avx sse2 ssse3 sse4.1 sse4.2"
echo "Extensions"
echo $ext
for i in $compext
do
	icc -o myprog myprog.cpp -std=c++11 -x$i -O2
	echo "Time for $i"
	time ./myprog
done