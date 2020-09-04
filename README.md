# bitrise-cli
An easy to use command-line tool for interacting with the Bitrise API


## Setup

1. Download the `swagger.json` from the [Bitrise API](https://api-docs.bitrise.io/).

2. Convert the `swagger.json` into `openapi.json` using the [Swagger Editor](https://editor.swagger.io/).

3. Run the command `swaggen generate openapi.json -d Sources/bitrise-api -c all`