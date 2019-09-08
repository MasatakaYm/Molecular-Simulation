#!/bin/sh

for file in `ls *.tex`
do
    make FILENAME=${file%.tex}
done
