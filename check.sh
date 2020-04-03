#!/usr/bin/env bash
set -e
statusURL=$(curl "https://eforms.gov.gg/portal/ServiceStatus.asp")
if [ "$statusURL" == "000 - System running normal" ]
then
	echo "agelisys is down.................."
        exit 1;
else
        exit -1
fi
