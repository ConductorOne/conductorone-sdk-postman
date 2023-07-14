

.PHONY: generate
generate:
	@echo "Generating..."
	openapi2postmanv2 -s ./specs/openapi.yaml -o ./postman.json -p -c ./specs/generator-config.json
	sed 's/"content": "This is an auto-generated API for c1.api.accessbundle.v1.AccessBundleSearchService/"content": "This is an auto-generated API for ConductorOne/' -i postman.json
	sed 's/"name": "API For c1.api.accessbundle.v1.AccessBundleSearchService",/"name": "C1 API",/' -i postman.json
	cat postman.json | jq --unbuffered '.auth.oauth2 += [{  "key": "client_authentication",  "value": "body",  "type": "string"}]' > postman2.json
	cat postman2.json | jq --unbuffered '.auth.oauth2 = (.auth.oauth2 | map(if .value == "https://{tenantDomain}.conductor.one" then .value = "https://{{tenantDomain}}.conductor.one" else . end))' > postman3.json
	@mv postman3.json postman.json
	@rm postman2.json