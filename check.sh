#!/usr/bin/env bash
set -e
statusURL=$(curl "https://eforms.gov.gg/portal/ServiceStatus.asp")
if [ "$statusURL" == "000 - System running normal" ]
then
	echo -e "\033[0;32m Agelisys is up.................."
        exit 0;
else
	echo -e "\033[0;31m Agelisys is down.................."
        exit 1;
fi
