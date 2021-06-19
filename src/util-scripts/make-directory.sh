#!/bin/sh

echo $1

mkdir $1
mv $1.* $1/
cp .latexmkrc $1/