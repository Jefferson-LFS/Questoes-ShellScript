#!/bin/bash

a1=$1; a2=$2

num_arqs_dir1=$(find ${a1} -type f | wc -l)

num_arqs_dir2=$(find ${a2} -type f | wc -l)

(( ${num_arqs_dir2} < ${num_arqs_dir1})) && ls -R $a1  || ls -R $a2
