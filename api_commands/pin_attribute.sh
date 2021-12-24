#!/bin/bash

TOKEN=$1
URL=$2
PROJECT_ID=$3
ATTRIBUTE_ID=$4

curl -X POST -H "Content-Type: application/json" -H "Authorization: Bearer $TOKEN" \
-d "{\"type\": \"project_attribute\", 
	\"attribute_id\": $ATTRIBUTE_ID, \
	\"is_active\": \"true\"}" \
$URL"/v1/projects/$PROJECT_ID/dashboard"
