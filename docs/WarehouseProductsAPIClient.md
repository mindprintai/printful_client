# Printful::WarehouseProductsAPIClient

All URIs are relative to *https://api.printful.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_warehouse_product**](WarehouseProductsAPIClient.md#get_warehouse_product) | **GET** /warehouse/products/{id} | Get warehouse product data |
| [**get_warehouse_products**](WarehouseProductsAPIClient.md#get_warehouse_products) | **GET** /warehouse/products | Get a list of your warehouse products |


## get_warehouse_product

> <GetWarehouseProduct200Response> get_warehouse_product(id, opts)

Get warehouse product data

Returns warehouse product data by ID

### Examples

```ruby
require 'time'
require 'printful_client'
# setup authorization
Printful.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Printful::WarehouseProductsAPIClient.new
id = nil # GetSyncProductByIdIdParameter | Product ID
opts = {
  x_pf_store_id: 'x_pf_store_id_example' # String | Use this to specify which store you want to use (required only for account level token)
}

begin
  # Get warehouse product data
  result = api_instance.get_warehouse_product(id, opts)
  p result
rescue Printful::ApiError => e
  puts "Error when calling WarehouseProductsAPIClient->get_warehouse_product: #{e}"
end
```

#### Using the get_warehouse_product_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWarehouseProduct200Response>, Integer, Hash)> get_warehouse_product_with_http_info(id, opts)

```ruby
begin
  # Get warehouse product data
  data, status_code, headers = api_instance.get_warehouse_product_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWarehouseProduct200Response>
rescue Printful::ApiError => e
  puts "Error when calling WarehouseProductsAPIClient->get_warehouse_product_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**GetSyncProductByIdIdParameter**](.md) | Product ID |  |
| **x_pf_store_id** | **String** | Use this to specify which store you want to use (required only for account level token) | [optional] |

### Return type

[**GetWarehouseProduct200Response**](GetWarehouseProduct200Response.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_warehouse_products

> <GetWarehouseProducts200Response> get_warehouse_products(opts)

Get a list of your warehouse products

Returns a list of warehouse products from your store

### Examples

```ruby
require 'time'
require 'printful_client'
# setup authorization
Printful.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Printful::WarehouseProductsAPIClient.new
opts = {
  query: 'query_example', # String | Filter by partial or full product name
  limit: 56, # Integer | Number of items per page (max 100)
  offset: 56, # Integer | Result set offset
  x_pf_store_id: 'x_pf_store_id_example' # String | Use this to specify which store you want to use (required only for account level token)
}

begin
  # Get a list of your warehouse products
  result = api_instance.get_warehouse_products(opts)
  p result
rescue Printful::ApiError => e
  puts "Error when calling WarehouseProductsAPIClient->get_warehouse_products: #{e}"
end
```

#### Using the get_warehouse_products_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWarehouseProducts200Response>, Integer, Hash)> get_warehouse_products_with_http_info(opts)

```ruby
begin
  # Get a list of your warehouse products
  data, status_code, headers = api_instance.get_warehouse_products_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWarehouseProducts200Response>
rescue Printful::ApiError => e
  puts "Error when calling WarehouseProductsAPIClient->get_warehouse_products_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **query** | **String** | Filter by partial or full product name | [optional] |
| **limit** | **Integer** | Number of items per page (max 100) | [optional] |
| **offset** | **Integer** | Result set offset | [optional] |
| **x_pf_store_id** | **String** | Use this to specify which store you want to use (required only for account level token) | [optional] |

### Return type

[**GetWarehouseProducts200Response**](GetWarehouseProducts200Response.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

