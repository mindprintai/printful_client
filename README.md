# printful-client

A Ruby client for the [Printful.com API](https://developers.printful.com/docs/)
generated using their OpenAPI/Swagger spec and the [OpenAPI Generator](https://openapi-generator.tech/) tool.

## Installation

To use the client as-is, add it to your project's Gemfile:

```sh
gem 'printful_client'
```

If you're not using a Gemfile, you can install the gem directly:

```sh
gem install printful_client
```

You can also build it from source:

```sh
gem build printful_client.gemspec
```

## Usage

See the [README in docs/](/mindprintai/printful_client/tree/master/docs/README.md) for
detailed usage documentation generated from the Swagger spec for this client.

## Contributing

### Generating a client for the latest spec

1. Install Docker: https://docs.docker.com/engine/install/
1. Open https://developers.printful.com/docs/
1. Click the "Download" button next to "Download the OpenAPI specification"
1. Save the downloaded file to `swagger.json` in this directory
1. Run the following script to generate the ruby client:
    ```sh
    ./generate.sh
    ```
1. Commit all changes and open a pull request
