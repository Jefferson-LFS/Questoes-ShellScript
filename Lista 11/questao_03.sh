#!/bin/bash

sed -Ei 's/([0-9]{3}).([0-9]{3}).([0-9]{3})-([0-9]{2})/**CENSURADO**/g' $1

