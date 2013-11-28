#!/bin/bash

gpio unexportall
for i in 7 8 9 10 11; do gpio -g mode $i in; done
for i in 7 8 9 10 11; do gpio -g mode $i tri; done
echo "unexport done"
