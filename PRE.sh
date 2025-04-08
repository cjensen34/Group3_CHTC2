#!/bin/bash

rm -f x*
rm -f shakespeare.tar*

wget https://pages.stat.wisc.edu/~jgillett/DSCP/CHTC/wordCounting/shakespeare.tar
tar -xvf shakespeare.tar

cat shakespeare/*/* > shakespeare_all.txt

split -n 5 shakespeare_all.txt

ls x* > file_list.txt

