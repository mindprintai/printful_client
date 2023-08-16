# Printful::StoreInformationAPIClient

All URIs are relative to *https://api.printful.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**change_packing_slip**](StoreInformationAPIClient.md#change_packing_slip) | **POST** /store/packing-slip | Change packing slip |
| [**get_store**](StoreInformationAPIClient.md#get_store) | **GET** /stores/{id} | Get basic information about a store |
| [**get_stores**](StoreInformationAPIClient.md#get_stores) | **GET** /stores | Get basic information about stores |


## change_packing_slip

> <ChangePackingSlip200Response> change_packing_slip(packing_slip, opts)

Change packing slip

Modifies packing slip information of the currently authorized Printful store.

### Examples

```ruby
require 'time'
require 'printful_client'
# setup authorization
Printful.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Printful::StoreInformationAPIClient.new
packing_slip = Printful::PackingSlip.new # PackingSlip | POST request body
opts = {
  x_pf_store_id: 'x_pf_store_id_example' # String | Use this to specify which store you want to use (required only for account level token)
}

begin
  # Change packing slip
  result = api_instance.change_packing_slip(packing_slip, opts)
  p result
rescue Printful::ApiError => e
  puts "Error when calling StoreInformationAPIClient->change_packing_slip: #{e}"
end
```

#### Using the change_packing_slip_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ChangePackingSlip200Response>, Integer, Hash)> change_packing_slip_with_http_info(packing_slip, opts)

```ruby
begin
  # Change packing slip
  data, status_code, headers = api_instance.change_packing_slip_with_http_info(packing_slip, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ChangePackingSlip200Response>
rescue Printful::ApiError => e
  puts "Error when calling StoreInformationAPIClient->change_packing_slip_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **packing_slip** | [**PackingSlip**](PackingSlip.md) | POST request body |  |
| **x_pf_store_id** | **String** | Use this to specify which store you want to use (required only for account level token) | [optional] |

### Return type

[**ChangePackingSlip200Response**](ChangePackingSlip200Response.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_store

> <GetStore200Response> get_store(id)

Get basic information about a store

Get basic information about a store based on provided ID

### Examples

```ruby
require 'time'
require 'printful_client'
# setup authorization
Printful.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Printful::StoreInformationAPIClient.new
id = 56 # Integer | Store ID

begin
  # Get basic information about a store
  result = api_instance.get_store(id)
  p result
rescue Printful::ApiError => e
  puts "Error when calling StoreInformationAPIClient->get_store: #{e}"
end
```

#### Using the get_store_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetStore200Response>, Integer, Hash)> get_store_with_http_info(id)

```ruby
begin
  # Get basic information about a store
  data, status_code, headers = api_instance.get_store_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetStore200Response>
rescue Printful::ApiError => e
  puts "Error when calling StoreInformationAPIClient->get_store_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Store ID |  |

### Return type

[**GetStore200Response**](GetStore200Response.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_stores

> <GetStores200Response> get_stores

Get basic information about stores

Get basic information about stores depending on the token access level

### Examples

```ruby
require 'time'
require 'printful_client'
# setup authorization
Printful.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Printful::StoreInformationAPIClient.new

begin
  # Get basic information about stores
  result = api_instance.get_stores
  p result
rescue Printful::ApiError => e
  puts "Error when calling StoreInformationAPIClient->get_stores: #{e}"
end
```

#### Using the get_stores_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetStores200Response>, Integer, Hash)> get_stores_with_http_info

```ruby
begin
  # Get basic information about stores
  data, status_code, headers = api_instance.get_stores_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetStores200Response>
rescue Printful::ApiError => e
  puts "Error when calling StoreInformationAPIClient->get_stores_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetStores200Response**](GetStores200Response.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

