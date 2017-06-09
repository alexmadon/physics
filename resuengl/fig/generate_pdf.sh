#!/bin/bash
for file in *.eps
do
   echo "converting $file => ${file/eps/pdf}..."
   epstopdf $file
done
