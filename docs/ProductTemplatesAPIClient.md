# Printful::ProductTemplatesAPIClient

All URIs are relative to *https://api.printful.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_product_template**](ProductTemplatesAPIClient.md#delete_product_template) | **DELETE** /product-templates/{id} | Delete product template |
| [**get_product_template_by_id**](ProductTemplatesAPIClient.md#get_product_template_by_id) | **GET** /product-templates/{id} | Get product template |
| [**get_product_templates**](ProductTemplatesAPIClient.md#get_product_templates) | **GET** /product-templates | Get product template list |


## delete_product_template

> <DeleteProductTemplate200Response> delete_product_template(id)

Delete product template

Delete product template by ID or External Product ID

### Examples

```ruby
require 'time'
require 'printful_client'
# setup authorization
Printful.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Printful::ProductTemplatesAPIClient.new
id = nil # GetSyncProductByIdIdParameter | Template ID (integer) or External Product ID (if prefixed with @)

begin
  # Delete product template
  result = api_instance.delete_product_template(id)
  p result
rescue Printful::ApiError => e
  puts "Error when calling ProductTemplatesAPIClient->delete_product_template: #{e}"
end
```

#### Using the delete_product_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteProductTemplate200Response>, Integer, Hash)> delete_product_template_with_http_info(id)

```ruby
begin
  # Delete product template
  data, status_code, headers = api_instance.delete_product_template_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteProductTemplate200Response>
rescue Printful::ApiError => e
  puts "Error when calling ProductTemplatesAPIClient->delete_product_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**GetSyncProductByIdIdParameter**](.md) | Template ID (integer) or External Product ID (if prefixed with @) |  |

### Return type

[**DeleteProductTemplate200Response**](DeleteProductTemplate200Response.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_product_template_by_id

> <GetProductTemplateById200Response> get_product_template_by_id(id)

Get product template

Get information about a single product template

### Examples

```ruby
require 'time'
require 'printful_client'
# setup authorization
Printful.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Printful::ProductTemplatesAPIClient.new
id = nil # GetSyncProductByIdIdParameter | Template ID (integer) or External Product ID (if prefixed with @)

begin
  # Get product template
  result = api_instance.get_product_template_by_id(id)
  p result
rescue Printful::ApiError => e
  puts "Error when calling ProductTemplatesAPIClient->get_product_template_by_id: #{e}"
end
```

#### Using the get_product_template_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetProductTemplateById200Response>, Integer, Hash)> get_product_template_by_id_with_http_info(id)

```ruby
begin
  # Get product template
  data, status_code, headers = api_instance.get_product_template_by_id_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetProductTemplateById200Response>
rescue Printful::ApiError => e
  puts "Error when calling ProductTemplatesAPIClient->get_product_template_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**GetSyncProductByIdIdParameter**](.md) | Template ID (integer) or External Product ID (if prefixed with @) |  |

### Return type

[**GetProductTemplateById200Response**](GetProductTemplateById200Response.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_product_templates

> <GetProductTemplates200Response> get_product_templates(opts)

Get product template list

Returns a list of templates.

### Examples

```ruby
require 'time'
require 'printful_client'
# setup authorization
Printful.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Printful::ProductTemplatesAPIClient.new
opts = {
  offset: 56, # Integer | Result set offset
  limit: 56 # Integer | Number of items per page (max 100)
}

begin
  # Get product template list
  result = api_instance.get_product_templates(opts)
  p result
rescue Printful::ApiError => e
  puts "Error when calling ProductTemplatesAPIClient->get_product_templates: #{e}"
end
```

#### Using the get_product_templates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetProductTemplates200Response>, Integer, Hash)> get_product_templates_with_http_info(opts)

```ruby
begin
  # Get product template list
  data, status_code, headers = api_instance.get_product_templates_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetProductTemplates200Response>
rescue Printful::ApiError => e
  puts "Error when calling ProductTemplatesAPIClient->get_product_templates_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Integer** | Result set offset | [optional] |
| **limit** | **Integer** | Number of items per page (max 100) | [optional] |

### Return type

[**GetProductTemplates200Response**](GetProductTemplates200Response.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

