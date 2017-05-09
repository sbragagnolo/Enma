#!/bin/bash


mkdir build/files -p
cd build/files 
wget -O- get.pharo.org/60+vmT | bash
./pharo Pharo eval --save " Metacello new baseline: 'Iceberg'; repository: 'github://npasserini/iceberg';load. Metacello new baseline: 'Enma'; repository: 'github://sbragagnolo/Enma/src'; load. "
cd ..
cp ../*.sh .
cp ../*.st .
cp ../contracts . -r
rm build.sh 
cd .. 
