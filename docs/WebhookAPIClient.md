# Printful::WebhookAPIClient

All URIs are relative to *https://api.printful.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_webhook**](WebhookAPIClient.md#create_webhook) | **POST** /webhooks | Set up webhook configuration |
| [**disable_webhook**](WebhookAPIClient.md#disable_webhook) | **DELETE** /webhooks | Disable webhook support |
| [**get_webhooks**](WebhookAPIClient.md#get_webhooks) | **GET** /webhooks | Get webhook configuration |


## create_webhook

> <GetWebhooks200Response> create_webhook(create_webhook_request, opts)

Set up webhook configuration

Use this endpoint to enable a webhook URL for a store and select webhook event types that will be sent to this URL.   Note that only one webhook URL can be active for a store, so calling this method disables all existing webhook configuration.   Setting up the [Stock updated](#operation/stockUpdated) webhook requires passing IDs for products that need to be monitored for changes. Stock update webhook will only include information for specified products. These product IDs need to be set up using the params property.

### Examples

```ruby
require 'time'
require 'printful_client'
# setup authorization
Printful.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Printful::WebhookAPIClient.new
create_webhook_request = Printful::CreateWebhookRequest.new({url: '*https://www.example.com/printful/webhook', types: ["package_shipped", "stock_updated"]}) # CreateWebhookRequest | POST request body
opts = {
  x_pf_store_id: 'x_pf_store_id_example' # String | Use this to specify which store you want to use (required only for account level token)
}

begin
  # Set up webhook configuration
  result = api_instance.create_webhook(create_webhook_request, opts)
  p result
rescue Printful::ApiError => e
  puts "Error when calling WebhookAPIClient->create_webhook: #{e}"
end
```

#### Using the create_webhook_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWebhooks200Response>, Integer, Hash)> create_webhook_with_http_info(create_webhook_request, opts)

```ruby
begin
  # Set up webhook configuration
  data, status_code, headers = api_instance.create_webhook_with_http_info(create_webhook_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWebhooks200Response>
rescue Printful::ApiError => e
  puts "Error when calling WebhookAPIClient->create_webhook_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_webhook_request** | [**CreateWebhookRequest**](CreateWebhookRequest.md) | POST request body |  |
| **x_pf_store_id** | **String** | Use this to specify which store you want to use (required only for account level token) | [optional] |

### Return type

[**GetWebhooks200Response**](GetWebhooks200Response.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## disable_webhook

> <GetWebhooks200Response> disable_webhook(opts)

Disable webhook support

Removes the webhook URL and all event types from the store.

### Examples

```ruby
require 'time'
require 'printful_client'
# setup authorization
Printful.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Printful::WebhookAPIClient.new
opts = {
  x_pf_store_id: 'x_pf_store_id_example' # String | Use this to specify which store you want to use (required only for account level token)
}

begin
  # Disable webhook support
  result = api_instance.disable_webhook(opts)
  p result
rescue Printful::ApiError => e
  puts "Error when calling WebhookAPIClient->disable_webhook: #{e}"
end
```

#### Using the disable_webhook_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWebhooks200Response>, Integer, Hash)> disable_webhook_with_http_info(opts)

```ruby
begin
  # Disable webhook support
  data, status_code, headers = api_instance.disable_webhook_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWebhooks200Response>
rescue Printful::ApiError => e
  puts "Error when calling WebhookAPIClient->disable_webhook_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_pf_store_id** | **String** | Use this to specify which store you want to use (required only for account level token) | [optional] |

### Return type

[**GetWebhooks200Response**](GetWebhooks200Response.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_webhooks

> <GetWebhooks200Response> get_webhooks(opts)

Get webhook configuration

Returns configured webhook URL and list of webhook event types enabled for the store

### Examples

```ruby
require 'time'
require 'printful_client'
# setup authorization
Printful.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Printful::WebhookAPIClient.new
opts = {
  x_pf_store_id: 'x_pf_store_id_example' # String | Use this to specify which store you want to use (required only for account level token)
}

begin
  # Get webhook configuration
  result = api_instance.get_webhooks(opts)
  p result
rescue Printful::ApiError => e
  puts "Error when calling WebhookAPIClient->get_webhooks: #{e}"
end
```

#### Using the get_webhooks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWebhooks200Response>, Integer, Hash)> get_webhooks_with_http_info(opts)

```ruby
begin
  # Get webhook configuration
  data, status_code, headers = api_instance.get_webhooks_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWebhooks200Response>
rescue Printful::ApiError => e
  puts "Error when calling WebhookAPIClient->get_webhooks_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_pf_store_id** | **String** | Use this to specify which store you want to use (required only for account level token) | [optional] |

### Return type

[**GetWebhooks200Response**](GetWebhooks200Response.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

