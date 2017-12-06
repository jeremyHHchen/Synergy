#!/bin/bash

curl --silent -k \
	-H "X-API-Version:500" \
	-H "auth: $(cat session.key)" \
	-H "Content-Type: application/json" \
	-X PUT \
	-d '{"powerState":"On", "powerControl":"MomentaryPress" }' \
	https://20.6.10.1/rest/server-hardware/33323337-3135-4753-4837-323959353837/powerState
