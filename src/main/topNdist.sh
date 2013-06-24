#!/bin/bash

INFILE=${1:?input file}

cat $INFILE | sort | uniq -c | perl -ne 'chomp; print "$2|$1\n" if (/^\s*(\d+)\s+(.*?)$/)'| sort --key 2 -nr -t \|

