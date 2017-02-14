#!/bin/bash


mkdir build/files -p
cd build/files 
wget -O- get.pharo.org/50+vm | bash
./pharo Pharo eval --save " Metacello new baseline: 'Fog'; repository: 'github://sbragagnolo/Fog/src'; load. "
cd ..
cp ../*.sh .
cp ../*.st .
cp ../contracts . -r
rm build.sh 
cd .. 
