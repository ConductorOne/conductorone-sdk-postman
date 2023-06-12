

.PHONY: generate
generate:
	@echo "Generating..."
	openapi2postmanv2 -s ./specs/openapi.yaml -o ./postman.json -p -c ./specs/generator-config.json