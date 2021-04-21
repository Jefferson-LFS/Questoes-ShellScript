#!/bin/bash

while [ ! -e /tmp/chave.txt ]; do
  date +DATA:%m/%d/%y%nHORA:%H:%M:%S
  sleep 2
done
