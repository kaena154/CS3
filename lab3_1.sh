#!/bin/sh
echo "Start"

icc -o myprog myprog.cpp -std=c++11 -O
echo "-O"
time ./myprog

icc -o myprog myprog.cpp -std=c++11 -O2
echo "-O2"
time ./myprog

icc -o myprog myprog.cpp -std=c++11 -O3
echo "-O3"
time ./myprog

icc -o myprog myprog.cpp -std=c++11 -Ofast
echo "-Ofast"
time ./myprog