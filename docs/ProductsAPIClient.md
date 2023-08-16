# Printful::ProductsAPIClient

All URIs are relative to *https://api.printful.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_sync_product**](ProductsAPIClient.md#create_sync_product) | **POST** /store/products | Create a new Sync Product |
| [**create_sync_variant**](ProductsAPIClient.md#create_sync_variant) | **POST** /store/products/{id}/variants | Create a new Sync Variant |
| [**delete_sync_product**](ProductsAPIClient.md#delete_sync_product) | **DELETE** /store/products/{id} | Delete a Sync Product |
| [**delete_sync_variant**](ProductsAPIClient.md#delete_sync_variant) | **DELETE** /store/variants/{id} | Delete a Sync Variant |
| [**get_sync_product_by_id**](ProductsAPIClient.md#get_sync_product_by_id) | **GET** /store/products/{id} | Get a Sync Product |
| [**get_sync_products**](ProductsAPIClient.md#get_sync_products) | **GET** /store/products | Get Sync Products |
| [**get_sync_variant_by_id**](ProductsAPIClient.md#get_sync_variant_by_id) | **GET** /store/variants/{id} | Get a Sync Variant |
| [**update_sync_product**](ProductsAPIClient.md#update_sync_product) | **PUT** /store/products/{id} | Modify a Sync Product |
| [**update_sync_variant**](ProductsAPIClient.md#update_sync_variant) | **PUT** /store/variants/{id} | Modify a Sync Variant |


## create_sync_product

> <CreateSyncProduct200Response> create_sync_product(product1, opts)

Create a new Sync Product

Creates a new Sync Product together with its Sync Variants ([See examples](#section/Products-API-examples/Create-a-new-Sync-Product)).

### Examples

```ruby
require 'time'
require 'printful_client'
# setup authorization
Printful.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Printful::ProductsAPIClient.new
product1 = Printful::Product1.new({sync_product: Printful::SyncProduct.new({name: 'T-shirt'}), sync_variants: [Printful::Product1SyncVariantsInner.new({variant_id: 3001, files: [3.56]})]}) # Product1 | POST request body
opts = {
  x_pf_store_id: 'x_pf_store_id_example' # String | Use this to specify which store you want to use (required only for account level token)
}

begin
  # Create a new Sync Product
  result = api_instance.create_sync_product(product1, opts)
  p result
rescue Printful::ApiError => e
  puts "Error when calling ProductsAPIClient->create_sync_product: #{e}"
end
```

#### Using the create_sync_product_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateSyncProduct200Response>, Integer, Hash)> create_sync_product_with_http_info(product1, opts)

```ruby
begin
  # Create a new Sync Product
  data, status_code, headers = api_instance.create_sync_product_with_http_info(product1, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateSyncProduct200Response>
rescue Printful::ApiError => e
  puts "Error when calling ProductsAPIClient->create_sync_product_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product1** | [**Product1**](Product1.md) | POST request body |  |
| **x_pf_store_id** | **String** | Use this to specify which store you want to use (required only for account level token) | [optional] |

### Return type

[**CreateSyncProduct200Response**](CreateSyncProduct200Response.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_sync_variant

> <GetSyncVariantById200Response> create_sync_variant(id, product1_sync_variants_inner, opts)

Create a new Sync Variant

Creates a new Sync Variant for an existing Sync Product ([See examples](#section/Products-API-examples/Create-a-new-Sync-Variant)).

### Examples

```ruby
require 'time'
require 'printful_client'
# setup authorization
Printful.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Printful::ProductsAPIClient.new
id = nil # GetSyncProductByIdIdParameter | Sync Product ID (integer) or External ID (if prefixed with @)
product1_sync_variants_inner = Printful::Product1SyncVariantsInner.new({variant_id: 3001, files: [3.56]}) # Product1SyncVariantsInner | POST request body
opts = {
  x_pf_store_id: 'x_pf_store_id_example' # String | Use this to specify which store you want to use (required only for account level token)
}

begin
  # Create a new Sync Variant
  result = api_instance.create_sync_variant(id, product1_sync_variants_inner, opts)
  p result
rescue Printful::ApiError => e
  puts "Error when calling ProductsAPIClient->create_sync_variant: #{e}"
end
```

#### Using the create_sync_variant_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetSyncVariantById200Response>, Integer, Hash)> create_sync_variant_with_http_info(id, product1_sync_variants_inner, opts)

```ruby
begin
  # Create a new Sync Variant
  data, status_code, headers = api_instance.create_sync_variant_with_http_info(id, product1_sync_variants_inner, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetSyncVariantById200Response>
rescue Printful::ApiError => e
  puts "Error when calling ProductsAPIClient->create_sync_variant_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**GetSyncProductByIdIdParameter**](.md) | Sync Product ID (integer) or External ID (if prefixed with @) |  |
| **product1_sync_variants_inner** | [**Product1SyncVariantsInner**](Product1SyncVariantsInner.md) | POST request body |  |
| **x_pf_store_id** | **String** | Use this to specify which store you want to use (required only for account level token) | [optional] |

### Return type

[**GetSyncVariantById200Response**](GetSyncVariantById200Response.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_sync_product

> <GetSyncProductById200Response> delete_sync_product(id, opts)

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

api_instance = Printful::ProductsAPIClient.new
id = nil # GetSyncProductByIdIdParameter | Sync Product ID (integer) or External ID (if prefixed with @)
opts = {
  x_pf_store_id: 'x_pf_store_id_example' # String | Use this to specify which store you want to use (required only for account level token)
}

begin
  # Delete a Sync Product
  result = api_instance.delete_sync_product(id, opts)
  p result
rescue Printful::ApiError => e
  puts "Error when calling ProductsAPIClient->delete_sync_product: #{e}"
end
```

#### Using the delete_sync_product_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetSyncProductById200Response>, Integer, Hash)> delete_sync_product_with_http_info(id, opts)

```ruby
begin
  # Delete a Sync Product
  data, status_code, headers = api_instance.delete_sync_product_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetSyncProductById200Response>
rescue Printful::ApiError => e
  puts "Error when calling ProductsAPIClient->delete_sync_product_with_http_info: #{e}"
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


## delete_sync_variant

> <DeleteSyncVariant200Response> delete_sync_variant(id, opts)

Delete a Sync Variant

Deletes a single Sync Variant.

### Examples

```ruby
require 'time'
require 'printful_client'
# setup authorization
Printful.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Printful::ProductsAPIClient.new
id = nil # GetSyncProductByIdIdParameter | Sync Variant ID (integer) or External ID (if prefixed with @)
opts = {
  x_pf_store_id: 'x_pf_store_id_example' # String | Use this to specify which store you want to use (required only for account level token)
}

begin
  # Delete a Sync Variant
  result = api_instance.delete_sync_variant(id, opts)
  p result
rescue Printful::ApiError => e
  puts "Error when calling ProductsAPIClient->delete_sync_variant: #{e}"
end
```

#### Using the delete_sync_variant_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteSyncVariant200Response>, Integer, Hash)> delete_sync_variant_with_http_info(id, opts)

```ruby
begin
  # Delete a Sync Variant
  data, status_code, headers = api_instance.delete_sync_variant_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteSyncVariant200Response>
rescue Printful::ApiError => e
  puts "Error when calling ProductsAPIClient->delete_sync_variant_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**GetSyncProductByIdIdParameter**](.md) | Sync Variant ID (integer) or External ID (if prefixed with @) |  |
| **x_pf_store_id** | **String** | Use this to specify which store you want to use (required only for account level token) | [optional] |

### Return type

[**DeleteSyncVariant200Response**](DeleteSyncVariant200Response.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_sync_product_by_id

> <GetSyncProductById200Response> get_sync_product_by_id(id, opts)

Get a Sync Product

Get information about a single Sync Product and its Sync Variants.

### Examples

```ruby
require 'time'
require 'printful_client'
# setup authorization
Printful.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Printful::ProductsAPIClient.new
id = nil # GetSyncProductByIdIdParameter | Sync Product ID (integer) or External ID (if prefixed with @)
opts = {
  x_pf_store_id: 'x_pf_store_id_example' # String | Use this to specify which store you want to use (required only for account level token)
}

begin
  # Get a Sync Product
  result = api_instance.get_sync_product_by_id(id, opts)
  p result
rescue Printful::ApiError => e
  puts "Error when calling ProductsAPIClient->get_sync_product_by_id: #{e}"
end
```

#### Using the get_sync_product_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetSyncProductById200Response>, Integer, Hash)> get_sync_product_by_id_with_http_info(id, opts)

```ruby
begin
  # Get a Sync Product
  data, status_code, headers = api_instance.get_sync_product_by_id_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetSyncProductById200Response>
rescue Printful::ApiError => e
  puts "Error when calling ProductsAPIClient->get_sync_product_by_id_with_http_info: #{e}"
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


## get_sync_products

> <GetSyncProducts200Response> get_sync_products(opts)

Get Sync Products

Returns a list of Sync Product objects from your custom Printful store.

### Examples

```ruby
require 'time'
require 'printful_client'
# setup authorization
Printful.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Printful::ProductsAPIClient.new
opts = {
  x_pf_store_id: 'x_pf_store_id_example', # String | Use this to specify which store you want to use (required only for account level token)
  category_id: 'category_id_example' # String | A comma-separated list of Category IDs of the Products that are to be returned
}

begin
  # Get Sync Products
  result = api_instance.get_sync_products(opts)
  p result
rescue Printful::ApiError => e
  puts "Error when calling ProductsAPIClient->get_sync_products: #{e}"
end
```

#### Using the get_sync_products_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetSyncProducts200Response>, Integer, Hash)> get_sync_products_with_http_info(opts)

```ruby
begin
  # Get Sync Products
  data, status_code, headers = api_instance.get_sync_products_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetSyncProducts200Response>
rescue Printful::ApiError => e
  puts "Error when calling ProductsAPIClient->get_sync_products_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_pf_store_id** | **String** | Use this to specify which store you want to use (required only for account level token) | [optional] |
| **category_id** | **String** | A comma-separated list of Category IDs of the Products that are to be returned | [optional] |

### Return type

[**GetSyncProducts200Response**](GetSyncProducts200Response.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_sync_variant_by_id

> <GetSyncVariantById200Response> get_sync_variant_by_id(id, opts)

Get a Sync Variant

Get information about a single Sync Variant.

### Examples

```ruby
require 'time'
require 'printful_client'
# setup authorization
Printful.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Printful::ProductsAPIClient.new
id = nil # GetSyncProductByIdIdParameter | Sync Variant ID (integer) or External ID (if prefixed with @)
opts = {
  x_pf_store_id: 'x_pf_store_id_example' # String | Use this to specify which store you want to use (required only for account level token)
}

begin
  # Get a Sync Variant
  result = api_instance.get_sync_variant_by_id(id, opts)
  p result
rescue Printful::ApiError => e
  puts "Error when calling ProductsAPIClient->get_sync_variant_by_id: #{e}"
end
```

#### Using the get_sync_variant_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetSyncVariantById200Response>, Integer, Hash)> get_sync_variant_by_id_with_http_info(id, opts)

```ruby
begin
  # Get a Sync Variant
  data, status_code, headers = api_instance.get_sync_variant_by_id_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetSyncVariantById200Response>
rescue Printful::ApiError => e
  puts "Error when calling ProductsAPIClient->get_sync_variant_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**GetSyncProductByIdIdParameter**](.md) | Sync Variant ID (integer) or External ID (if prefixed with @) |  |
| **x_pf_store_id** | **String** | Use this to specify which store you want to use (required only for account level token) | [optional] |

### Return type

[**GetSyncVariantById200Response**](GetSyncVariantById200Response.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_sync_product

> <CreateSyncProduct200Response> update_sync_product(id, update_sync_product_request, opts)

Modify a Sync Product

Modifies an existing Sync Product with its Sync Variants.  Please note that in the request body you only need to specify the fields that need to be changed. Furthermore, if you want to update existing sync variants,  then in the sync variants array you must specify the IDs of all existing sync variants. All omitted existing sync variants will be deleted. All new sync  variants without an ID will be created. See examples for more insights.  **Rate limiting:** Up to 10 requests per 60 seconds. A 60 seconds lockout is applied if request count is exceeded.  [See examples](#section/Products-API-examples/Modify-a-Sync-Product) 

### Examples

```ruby
require 'time'
require 'printful_client'
# setup authorization
Printful.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Printful::ProductsAPIClient.new
id = nil # GetSyncProductByIdIdParameter | Sync Product ID (integer) or External ID (if prefixed with @)
update_sync_product_request = Printful::UpdateSyncProductRequest.new # UpdateSyncProductRequest | PUT request body
opts = {
  x_pf_store_id: 'x_pf_store_id_example' # String | Use this to specify which store you want to use (required only for account level token)
}

begin
  # Modify a Sync Product
  result = api_instance.update_sync_product(id, update_sync_product_request, opts)
  p result
rescue Printful::ApiError => e
  puts "Error when calling ProductsAPIClient->update_sync_product: #{e}"
end
```

#### Using the update_sync_product_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateSyncProduct200Response>, Integer, Hash)> update_sync_product_with_http_info(id, update_sync_product_request, opts)

```ruby
begin
  # Modify a Sync Product
  data, status_code, headers = api_instance.update_sync_product_with_http_info(id, update_sync_product_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateSyncProduct200Response>
rescue Printful::ApiError => e
  puts "Error when calling ProductsAPIClient->update_sync_product_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**GetSyncProductByIdIdParameter**](.md) | Sync Product ID (integer) or External ID (if prefixed with @) |  |
| **update_sync_product_request** | [**UpdateSyncProductRequest**](UpdateSyncProductRequest.md) | PUT request body |  |
| **x_pf_store_id** | **String** | Use this to specify which store you want to use (required only for account level token) | [optional] |

### Return type

[**CreateSyncProduct200Response**](CreateSyncProduct200Response.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_sync_variant

> <GetSyncVariantById200Response> update_sync_variant(id, update_sync_variant_request, opts)

Modify a Sync Variant

Modifies an existing Sync Variant.  Please note that in the request body you only need to specify the fields that need to be changed. See examples for more insights.  [See examples](#section/Products-API-examples/Modify-a-Sync-Variant) 

### Examples

```ruby
require 'time'
require 'printful_client'
# setup authorization
Printful.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Printful::ProductsAPIClient.new
id = nil # GetSyncProductByIdIdParameter | Sync Variant ID (integer) or External ID (if prefixed with @)
update_sync_variant_request = Printful::UpdateSyncVariantRequest.new # UpdateSyncVariantRequest | POST request body
opts = {
  x_pf_store_id: 'x_pf_store_id_example' # String | Use this to specify which store you want to use (required only for account level token)
}

begin
  # Modify a Sync Variant
  result = api_instance.update_sync_variant(id, update_sync_variant_request, opts)
  p result
rescue Printful::ApiError => e
  puts "Error when calling ProductsAPIClient->update_sync_variant: #{e}"
end
```

#### Using the update_sync_variant_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetSyncVariantById200Response>, Integer, Hash)> update_sync_variant_with_http_info(id, update_sync_variant_request, opts)

```ruby
begin
  # Modify a Sync Variant
  data, status_code, headers = api_instance.update_sync_variant_with_http_info(id, update_sync_variant_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetSyncVariantById200Response>
rescue Printful::ApiError => e
  puts "Error when calling ProductsAPIClient->update_sync_variant_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**GetSyncProductByIdIdParameter**](.md) | Sync Variant ID (integer) or External ID (if prefixed with @) |  |
| **update_sync_variant_request** | [**UpdateSyncVariantRequest**](UpdateSyncVariantRequest.md) | POST request body |  |
| **x_pf_store_id** | **String** | Use this to specify which store you want to use (required only for account level token) | [optional] |

### Return type

[**GetSyncVariantById200Response**](GetSyncVariantById200Response.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

