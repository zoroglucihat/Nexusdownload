#!/bin/bash
#Author:    Cihat Zoroğlu
links=$(curl -u user:pass -X GET 'http://1ip:8081/service/rest/v1/search/assets?repository=test&group=' | grep downloadUrl | cut -d ":" -f 2-4 | cut -d "," -f1 | cut -d'"' -f 2)

for link in $links; do
    curl -X GET -u user:pass http://ip:8081/repository/rpm/${link} -O
done
