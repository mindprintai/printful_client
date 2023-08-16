# Printful::EcommercePlatformSyncAPIClient

All URIs are relative to *https://api.printful.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_store_sync_product**](EcommercePlatformSyncAPIClient.md#delete_store_sync_product) | **DELETE** /sync/products/{id} | Delete a Sync Product |
| [**delete_store_sync_variant**](EcommercePlatformSyncAPIClient.md#delete_store_sync_variant) | **DELETE** /sync/variant/{id} | Delete a Sync Variant |
| [**get_store_sync_product_by_id**](EcommercePlatformSyncAPIClient.md#get_store_sync_product_by_id) | **GET** /sync/products/{id} | Get a Sync Product |
| [**get_store_sync_products**](EcommercePlatformSyncAPIClient.md#get_store_sync_products) | **GET** /sync/products | Get list of Sync Products |
| [**get_store_sync_variant_by_id**](EcommercePlatformSyncAPIClient.md#get_store_sync_variant_by_id) | **GET** /sync/variant/{id} | Get a Sync Variant |
| [**update_store_sync_variant**](EcommercePlatformSyncAPIClient.md#update_store_sync_variant) | **PUT** /sync/variant/{id} | Modify a Sync Variant |


## delete_store_sync_product

> <GetSyncProductById200Response> delete_store_sync_product(id, opts)

Delete a Sync Product

Deletes a Sync Product with all of its Sync Variants

### Examples

```ruby
require 'time'
require 'printful_client'
# setup authorization
Printful.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Printful::EcommercePlatformSyncAPIClient.new
id = nil # GetSyncProductByIdIdParameter | Sync Product ID (integer) or External ID (if prefixed with @)
opts = {
  x_pf_store_id: 'x_pf_store_id_example' # String | Use this to specify which store you want to use (required only for account level token)
}

begin
  # Delete a Sync Product
  result = api_instance.delete_store_sync_product(id, opts)
  p result
rescue Printful::ApiError => e
  puts "Error when calling EcommercePlatformSyncAPIClient->delete_store_sync_product: #{e}"
end
```

#### Using the delete_store_sync_product_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetSyncProductById200Response>, Integer, Hash)> delete_store_sync_product_with_http_info(id, opts)

```ruby
begin
  # Delete a Sync Product
  data, status_code, headers = api_instance.delete_store_sync_product_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetSyncProductById200Response>
rescue Printful::ApiError => e
  puts "Error when calling EcommercePlatformSyncAPIClient->delete_store_sync_product_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**GetSyncProductByIdIdParameter**](.md) | Sync Product ID (integer) or External ID (if prefixed with @) |  |
| **x_pf_store_id** | **String** | Use this to specify which store you want to use (required only for account level token) | [optional] |

### Return type

[**GetSyncProductById200Response**](GetSyncProductById200Response.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_store_sync_variant

> <GetStoreSyncVariantById200Response> delete_store_sync_variant(id, opts)

Delete a Sync Variant

Deletes configuraton information (`variant_id`, print files and options) and disables automatic order importing for this Sync Variant.

### Examples

```ruby
require 'time'
require 'printful_client'
# setup authorization
Printful.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Printful::EcommercePlatformSyncAPIClient.new
id = nil # GetSyncProductByIdIdParameter | Sync Variant ID (integer) or External ID (if prefixed with @)
opts = {
  x_pf_store_id: 'x_pf_store_id_example' # String | Use this to specify which store you want to use (required only for account level token)
}

begin
  # Delete a Sync Variant
  result = api_instance.delete_store_sync_variant(id, opts)
  p result
rescue Printful::ApiError => e
  puts "Error when calling EcommercePlatformSyncAPIClient->delete_store_sync_variant: #{e}"
end
```

#### Using the delete_store_sync_variant_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetStoreSyncVariantById200Response>, Integer, Hash)> delete_store_sync_variant_with_http_info(id, opts)

```ruby
begin
  # Delete a Sync Variant
  data, status_code, headers = api_instance.delete_store_sync_variant_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetStoreSyncVariantById200Response>
rescue Printful::ApiError => e
  puts "Error when calling EcommercePlatformSyncAPIClient->delete_store_sync_variant_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**GetSyncProductByIdIdParameter**](.md) | Sync Variant ID (integer) or External ID (if prefixed with @) |  |
| **x_pf_store_id** | **String** | Use this to specify which store you want to use (required only for account level token) | [optional] |

### Return type

[**GetStoreSyncVariantById200Response**](GetStoreSyncVariantById200Response.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_store_sync_product_by_id

> <GetSyncProductById200Response> get_store_sync_product_by_id(id, opts)

Get a Sync Product

Get information about a single Sync Product and its Sync Variants

### Examples

```ruby
require 'time'
require 'printful_client'
# setup authorization
Printful.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Printful::EcommercePlatformSyncAPIClient.new
id = nil # GetSyncProductByIdIdParameter | Sync Product ID (integer) or External ID (if prefixed with @)
opts = {
  x_pf_store_id: 'x_pf_store_id_example' # String | Use this to specify which store you want to use (required only for account level token)
}

begin
  # Get a Sync Product
  result = api_instance.get_store_sync_product_by_id(id, opts)
  p result
rescue Printful::ApiError => e
  puts "Error when calling EcommercePlatformSyncAPIClient->get_store_sync_product_by_id: #{e}"
end
```

#### Using the get_store_sync_product_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetSyncProductById200Response>, Integer, Hash)> get_store_sync_product_by_id_with_http_info(id, opts)

```ruby
begin
  # Get a Sync Product
  data, status_code, headers = api_instance.get_store_sync_product_by_id_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetSyncProductById200Response>
rescue Printful::ApiError => e
  puts "Error when calling EcommercePlatformSyncAPIClient->get_store_sync_product_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**GetSyncProductByIdIdParameter**](.md) | Sync Product ID (integer) or External ID (if prefixed with @) |  |
| **x_pf_store_id** | **String** | Use this to specify which store you want to use (required only for account level token) | [optional] |

### Return type

[**GetSyncProductById200Response**](GetSyncProductById200Response.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_store_sync_products

> <GetSyncProducts200Response> get_store_sync_products(opts)

Get list of Sync Products

Returns list of Sync Product objects from your store.

### Examples

```ruby
require 'time'
require 'printful_client'
# setup authorization
Printful.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Printful::EcommercePlatformSyncAPIClient.new
opts = {
  status: 'status_example', # String | Filter by item status (`synced`/`unsynced`/`all`). If only some of the variants are synced,the product is returned by both unsynced and synced filters
  search: 'search_example', # String | Product search needle
  offset: 56, # Integer | Result set offset
  limit: 56, # Integer | Number of items per page (max 100)
  x_pf_store_id: 'x_pf_store_id_example' # String | Use this to specify which store you want to use (required only for account level token)
}

begin
  # Get list of Sync Products
  result = api_instance.get_store_sync_products(opts)
  p result
rescue Printful::ApiError => e
  puts "Error when calling EcommercePlatformSyncAPIClient->get_store_sync_products: #{e}"
end
```

#### Using the get_store_sync_products_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetSyncProducts200Response>, Integer, Hash)> get_store_sync_products_with_http_info(opts)

```ruby
begin
  # Get list of Sync Products
  data, status_code, headers = api_instance.get_store_sync_products_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetSyncProducts200Response>
rescue Printful::ApiError => e
  puts "Error when calling EcommercePlatformSyncAPIClient->get_store_sync_products_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | Filter by item status (&#x60;synced&#x60;/&#x60;unsynced&#x60;/&#x60;all&#x60;). If only some of the variants are synced,the product is returned by both unsynced and synced filters | [optional] |
| **search** | **String** | Product search needle | [optional] |
| **offset** | **Integer** | Result set offset | [optional] |
| **limit** | **Integer** | Number of items per page (max 100) | [optional] |
| **x_pf_store_id** | **String** | Use this to specify which store you want to use (required only for account level token) | [optional] |

### Return type

[**GetSyncProducts200Response**](GetSyncProducts200Response.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_store_sync_variant_by_id

> <GetStoreSyncVariantById200Response> get_store_sync_variant_by_id(id, opts)

Get a Sync Variant

Get information about a single Sync Variant

### Examples

```ruby
require 'time'
require 'printful_client'
# setup authorization
Printful.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Printful::EcommercePlatformSyncAPIClient.new
id = nil # GetSyncProductByIdIdParameter | Sync Variant ID (integer) or External ID (if prefixed with @)
opts = {
  x_pf_store_id: 'x_pf_store_id_example' # String | Use this to specify which store you want to use (required only for account level token)
}

begin
  # Get a Sync Variant
  result = api_instance.get_store_sync_variant_by_id(id, opts)
  p result
rescue Printful::ApiError => e
  puts "Error when calling EcommercePlatformSyncAPIClient->get_store_sync_variant_by_id: #{e}"
end
```

#### Using the get_store_sync_variant_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetStoreSyncVariantById200Response>, Integer, Hash)> get_store_sync_variant_by_id_with_http_info(id, opts)

```ruby
begin
  # Get a Sync Variant
  data, status_code, headers = api_instance.get_store_sync_variant_by_id_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetStoreSyncVariantById200Response>
rescue Printful::ApiError => e
  puts "Error when calling EcommercePlatformSyncAPIClient->get_store_sync_variant_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**GetSyncProductByIdIdParameter**](.md) | Sync Variant ID (integer) or External ID (if prefixed with @) |  |
| **x_pf_store_id** | **String** | Use this to specify which store you want to use (required only for account level token) | [optional] |

### Return type

[**GetStoreSyncVariantById200Response**](GetStoreSyncVariantById200Response.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_store_sync_variant

> <GetStoreSyncVariantById200Response> update_store_sync_variant(id, update_sync_variant_request, opts)

Modify a Sync Variant

Modifies an existing Sync Variant.  Please note that in the request body you only need to specify the fields that need to be changed. See examples for more insights.  [See examples](#section/Ecommerce-Platform-Sync-API-examples/Modify-a-Sync-Variant) 

### Examples

```ruby
require 'time'
require 'printful_client'
# setup authorization
Printful.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Printful::EcommercePlatformSyncAPIClient.new
id = nil # GetSyncProductByIdIdParameter | Sync Variant ID (integer) or External ID (if prefixed with @)
update_sync_variant_request = Printful::UpdateSyncVariantRequest.new # UpdateSyncVariantRequest | POST request body
opts = {
  x_pf_store_id: 'x_pf_store_id_example' # String | Use this to specify which store you want to use (required only for account level token)
}

begin
  # Modify a Sync Variant
  result = api_instance.update_store_sync_variant(id, update_sync_variant_request, opts)
  p result
rescue Printful::ApiError => e
  puts "Error when calling EcommercePlatformSyncAPIClient->update_store_sync_variant: #{e}"
end
```

#### Using the update_store_sync_variant_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetStoreSyncVariantById200Response>, Integer, Hash)> update_store_sync_variant_with_http_info(id, update_sync_variant_request, opts)

```ruby
begin
  # Modify a Sync Variant
  data, status_code, headers = api_instance.update_store_sync_variant_with_http_info(id, update_sync_variant_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetStoreSyncVariantById200Response>
rescue Printful::ApiError => e
  puts "Error when calling EcommercePlatformSyncAPIClient->update_store_sync_variant_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**GetSyncProductByIdIdParameter**](.md) | Sync Variant ID (integer) or External ID (if prefixed with @) |  |
| **update_sync_variant_request** | [**UpdateSyncVariantRequest**](UpdateSyncVariantRequest.md) | POST request body |  |
| **x_pf_store_id** | **String** | Use this to specify which store you want to use (required only for account level token) | [optional] |

### Return type

[**GetStoreSyncVariantById200Response**](GetStoreSyncVariantById200Response.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

