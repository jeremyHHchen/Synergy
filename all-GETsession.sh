#!/bin/bash

session=$( \
curl --silent -k \
	-H "Content-Type:application/json" \
	-H "X-API-Version:500" \
	-X POST -d "{\"userName\":\"Administrator\",\"password\":\"!1Password\"} " \
	https://20.6.10.1/rest/login-sessions | jq -r '.sessionID' \
)

echo ${session} > session.key

echo ${session}
