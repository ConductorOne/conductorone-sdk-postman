# ConductorOne SDK Postman

This repository hosts a `postman.json` file that allows you to quickly create a Postman collection for our API.

## Importing the Collection to Postman

To import the Postman collection into Postman:

1. Open Postman and click on the "Import" button in the top left corner.

2. In the import modal, select the "Collection" tab.

3. Click on the "Upload Files" button and select the `postman.json` file, or paste the URL from the latest release.

4. Postman will import the collection, and it will be available in the left sidebar under "Collections."

Please note that contributions and improvements to the API itself should be directed to the appropriate repositories.

## Regenerating from an `openapi.yaml`

### Prerequisites

Before getting started, please make sure you have the following prerequisite installed on your system:

- [openapi-to-postmanv2](https://github.com/postmanlabs/openapi-to-postman) command-line tool

### Updating the Collection

To update the Postman collection with the latest changes from the OpenAPI specification:

1. Download the latest `openapi.yaml` file representing the current API specification.

2. Place the `openapi.yaml` file in the `specs` directory.

3. Run the following command in the repository's directory:

   ```bash
   $ make generate
   ```

   This will generate an updated `postman.json` file using the `openapi-to-postman` command-line tool.

4. Once the process completes, you will find the updated `postman.json` file in the repository's root directory.

