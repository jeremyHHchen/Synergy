#!/bin/bash

curl -k \
	-H "X-API-Version:500" \
	-H "auth: $(cat session.key)" \
	-H "Content-Type: application/json" \
	-X POST \
	-d '{"type" : "ServerProfileV7",
		"name" : "bay10_Profile101",
		"serverProfileTemplateUri" : "/rest/server-profile-templates/e322b49a-dbb2-48eb-8f08-7a8556ff589c",
		"serverHardwareUri" : "/rest/server-hardware/33323337-3135-4753-4837-323959353837"}' \
	https://20.6.10.1/rest/server-profiles
