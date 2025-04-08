#!/bin/bash

sort -m x*_sorted | uniq -c | sort -nr > countOfWords.txt
