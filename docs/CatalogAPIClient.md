# Printful::CatalogAPIClient

All URIs are relative to *https://api.printful.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_categories**](CatalogAPIClient.md#get_categories) | **GET** /categories | Get Categories |
| [**get_category_by_id**](CatalogAPIClient.md#get_category_by_id) | **GET** /categories/{id} | Get Category |
| [**get_product_by_id**](CatalogAPIClient.md#get_product_by_id) | **GET** /products/{id} | Get Product |
| [**get_product_size_guide_by_id**](CatalogAPIClient.md#get_product_size_guide_by_id) | **GET** /products/{id}/sizes | Get Product Size Guide |
| [**get_products**](CatalogAPIClient.md#get_products) | **GET** /products | Get Products |
| [**get_variant_by_id**](CatalogAPIClient.md#get_variant_by_id) | **GET** /products/variant/{id} | Get Variant |


## get_categories

> <GetCategories200Response> get_categories

Get Categories

Returns list of Catalog Categories available in the Printful

### Examples

```ruby
require 'time'
require 'printful_client'

api_instance = Printful::CatalogAPIClient.new

begin
  # Get Categories
  result = api_instance.get_categories
  p result
rescue Printful::ApiError => e
  puts "Error when calling CatalogAPIClient->get_categories: #{e}"
end
```

#### Using the get_categories_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCategories200Response>, Integer, Hash)> get_categories_with_http_info

```ruby
begin
  # Get Categories
  data, status_code, headers = api_instance.get_categories_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCategories200Response>
rescue Printful::ApiError => e
  puts "Error when calling CatalogAPIClient->get_categories_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetCategories200Response**](GetCategories200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_category_by_id

> <GetCategoryById200Response> get_category_by_id(id)

Get Category

Returns information about a specific category.

### Examples

```ruby
require 'time'
require 'printful_client'

api_instance = Printful::CatalogAPIClient.new
id = 56 # Integer | Category ID

begin
  # Get Category
  result = api_instance.get_category_by_id(id)
  p result
rescue Printful::ApiError => e
  puts "Error when calling CatalogAPIClient->get_category_by_id: #{e}"
end
```

#### Using the get_category_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCategoryById200Response>, Integer, Hash)> get_category_by_id_with_http_info(id)

```ruby
begin
  # Get Category
  data, status_code, headers = api_instance.get_category_by_id_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCategoryById200Response>
rescue Printful::ApiError => e
  puts "Error when calling CatalogAPIClient->get_category_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Category ID |  |

### Return type

[**GetCategoryById200Response**](GetCategoryById200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_product_by_id

> <GetProductById200Response> get_product_by_id(id)

Get Product

Returns information about a specific product and a list of variants for this product.

### Examples

```ruby
require 'time'
require 'printful_client'

api_instance = Printful::CatalogAPIClient.new
id = 56 # Integer | Product ID.

begin
  # Get Product
  result = api_instance.get_product_by_id(id)
  p result
rescue Printful::ApiError => e
  puts "Error when calling CatalogAPIClient->get_product_by_id: #{e}"
end
```

#### Using the get_product_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetProductById200Response>, Integer, Hash)> get_product_by_id_with_http_info(id)

```ruby
begin
  # Get Product
  data, status_code, headers = api_instance.get_product_by_id_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetProductById200Response>
rescue Printful::ApiError => e
  puts "Error when calling CatalogAPIClient->get_product_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Product ID. |  |

### Return type

[**GetProductById200Response**](GetProductById200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_product_size_guide_by_id

> <GetProductSizeGuideById200Response> get_product_size_guide_by_id(id, opts)

Get Product Size Guide

Returns information about the size guide for a specific product.

### Examples

```ruby
require 'time'
require 'printful_client'

api_instance = Printful::CatalogAPIClient.new
id = 56 # Integer | Product ID.
opts = {
  unit: 'inches,cm' # String | A comma-separated list of measurement unit in which size tables are to be returned (`inches` or `cm`). The default value is determined based on the locale country. The inches are used for United States, Liberia and Myanmar, for other countries the unit defaults to centimeters. 
}

begin
  # Get Product Size Guide
  result = api_instance.get_product_size_guide_by_id(id, opts)
  p result
rescue Printful::ApiError => e
  puts "Error when calling CatalogAPIClient->get_product_size_guide_by_id: #{e}"
end
```

#### Using the get_product_size_guide_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetProductSizeGuideById200Response>, Integer, Hash)> get_product_size_guide_by_id_with_http_info(id, opts)

```ruby
begin
  # Get Product Size Guide
  data, status_code, headers = api_instance.get_product_size_guide_by_id_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetProductSizeGuideById200Response>
rescue Printful::ApiError => e
  puts "Error when calling CatalogAPIClient->get_product_size_guide_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Product ID. |  |
| **unit** | **String** | A comma-separated list of measurement unit in which size tables are to be returned (&#x60;inches&#x60; or &#x60;cm&#x60;). The default value is determined based on the locale country. The inches are used for United States, Liberia and Myanmar, for other countries the unit defaults to centimeters.  | [optional] |

### Return type

[**GetProductSizeGuideById200Response**](GetProductSizeGuideById200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_products

> <GetProducts200Response> get_products(opts)

Get Products

Returns list of Products available in the Printful

### Examples

```ruby
require 'time'
require 'printful_client'

api_instance = Printful::CatalogAPIClient.new
opts = {
  category_id: 'category_id_example' # String | A comma-separated list of Category IDs of the Products that are to be returned
}

begin
  # Get Products
  result = api_instance.get_products(opts)
  p result
rescue Printful::ApiError => e
  puts "Error when calling CatalogAPIClient->get_products: #{e}"
end
```

#### Using the get_products_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetProducts200Response>, Integer, Hash)> get_products_with_http_info(opts)

```ruby
begin
  # Get Products
  data, status_code, headers = api_instance.get_products_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetProducts200Response>
rescue Printful::ApiError => e
  puts "Error when calling CatalogAPIClient->get_products_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **category_id** | **String** | A comma-separated list of Category IDs of the Products that are to be returned | [optional] |

### Return type

[**GetProducts200Response**](GetProducts200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_variant_by_id

> <GetVariantById200Response> get_variant_by_id(id)

Get Variant

Returns information about a specific Variant and its Product

### Examples

```ruby
require 'time'
require 'printful_client'

api_instance = Printful::CatalogAPIClient.new
id = 56 # Integer | Variant id

begin
  # Get Variant
  result = api_instance.get_variant_by_id(id)
  p result
rescue Printful::ApiError => e
  puts "Error when calling CatalogAPIClient->get_variant_by_id: #{e}"
end
```

#### Using the get_variant_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetVariantById200Response>, Integer, Hash)> get_variant_by_id_with_http_info(id)

```ruby
begin
  # Get Variant
  data, status_code, headers = api_instance.get_variant_by_id_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetVariantById200Response>
rescue Printful::ApiError => e
  puts "Error when calling CatalogAPIClient->get_variant_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Variant id |  |

### Return type

[**GetVariantById200Response**](GetVariantById200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

