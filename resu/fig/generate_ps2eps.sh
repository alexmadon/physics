#!/bin/bash
for file in *.ps
do
   echo "converting $file => ${file/ps/eps}"
   cp $file ${file/ps/eps}
done