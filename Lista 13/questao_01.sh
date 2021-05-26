#!/bin/bash

maior () {
  [ $1 -gt $2 ] && echo $1 || echo $2
}


menor () {
  [ $1 -lt $2 ] && echo $1 || echo $2
}
