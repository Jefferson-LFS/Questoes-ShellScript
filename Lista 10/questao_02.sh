#!/bin/bash

TMP+=`grep . $1`
> $1

for linha in $TMP; do
  echo $linha >> $1
done

cat $1
