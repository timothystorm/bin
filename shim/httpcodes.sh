#!/usr/bin/bash

################################################################################
# Writes out the status codes of the service centers provided on the command 
# line.
#
# usage: $0 {path_to_ccid_file}...
#
# author: Timothy Storm - timothy.storm@fedex.com
################################################################################
for f in $*; do
  while read ccid; do
    URL="http://www.fedex.com/us/freight/transit_maps/${ccid}.pdf"
    RES=$(curl -LI "$URL" -o /dev/null -w %{http_code} -s)   
    echo "${ccid} = ${RES}"
  done <"$f"
done

