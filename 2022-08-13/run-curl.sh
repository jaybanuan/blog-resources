#!/bin/bash

curl \
    --request POST \
    http://localhost:8080/

curl \
    --header "Content-Type: application/json" \
    --data '{"name":"Jaybanuan", "age":10, "favorite": "チョコ棒"}' \
    http://localhost:8080/

curl \
    --data name=jaybanuan \
    --data-raw age=10 \
    --data-urlencode "favorite=チョコ棒" \
    http://localhost:8080/

curl \
    --form name=jaybanuan \
    --form age=10 \
    --form "favorite=チョコ棒" \
    http://localhost:8080/

curl \
    --form greeting-en=@greeting.txt \
    --form "greeting-json=@greeting.json;type=application/json" \
    http://localhost:8080/

curl \
    --header "Content-Type: application/json" \
    --data @file-upload.json \
    http://localhost:8080/
