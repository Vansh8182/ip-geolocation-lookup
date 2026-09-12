#!/bin/bash
 
# IP Geolocation Lookup Script
# Usage: ./ip-lookup.sh
# Fetches location info (city, region, country, etc.) for a given IP using ip-api.com
 
read -p "Enter IP address: " ip
 
if [ "$ip" == "" ]
then
        echo "Usage: Please enter a valid IP"
        exit
fi
 
res=$(curl -s "http://ip-api.com/json/$ip?fields=status,city,regionName,country,zip,lat,lon,timezone")
status=$(echo $res | jq '.status' -r)
 
if [ "$status" == "success" ]
then
    city=$(echo $res | jq '.city' -r)
    echo "CITY: $city"
    region=$(echo $res | jq '.regionName' -r)
    echo "REGION: $region"
    country=$(echo $res | jq '.country' -r)
    echo "COUNTRY: $country"
    zip=$(echo $res | jq '.zip' -r)
    echo "ZIP: $zip"
    lat=$(echo $res | jq '.lat' -r)
    echo "LAT: $lat"
    lon=$(echo $res | jq '.lon' -r)
    echo "LON: $lon"
    timezone=$(echo $res | jq '.timezone' -r)
    echo "TIMEZONE: $timezone"
else
    echo "Invalid IP or lookup failed."
fi
 
