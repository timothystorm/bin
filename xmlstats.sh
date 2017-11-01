#!/bin/bash

grep XMLLTLTracking /var/fedex/weblogic/logs/access.log* | wc -l
grep XMLLTLBOL /var/fedex/weblogic/logs/access.log* | wc -l
grep XMLLTLCityLookup /var/fedex/weblogic/logs/access.log* | wc -l
grep XMLLTLImage /var/fedex/weblogic/logs/access.log* | wc -l
grep XMLLTLPickup /var/fedex/weblogic/logs/access.log* | wc -l
grep XMLLTLRating /var/fedex/weblogic/logs/access.log* | wc -l
grep XMLLTLRatingNoCity /var/fedex/weblogic/logs/access.log* | wc -l
