#!/bin/bash

cat file.txt | awk '$0 ~ /^([0-9][0-9][0-9])-[0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]$|^(\([0-9][0-9][0-9]\) )[0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]$/ {print $0}'


