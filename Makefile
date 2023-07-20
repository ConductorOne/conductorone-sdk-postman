

.PHONY: generate
generate:
	@echo "Generating..."
	curl -sSL https://invalid-example.conductor.one/api/v1/openapi.yaml > ./specs/openapi.yaml
	openapi2postmanv2 -s ./specs/openapi.yaml -o ./postman.json -p -c ./specs/generator-config.json
