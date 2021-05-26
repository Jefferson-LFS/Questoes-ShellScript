#!/bin/bash

ping_test() {
  ping -c1 "$1" &> /dev/null && echo "OK" || echo "FALHA"
}

ping_test $1
