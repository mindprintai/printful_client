# Printful::OrdersAPIClient

All URIs are relative to *https://api.printful.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**cancel_order_by_id**](OrdersAPIClient.md#cancel_order_by_id) | **DELETE** /orders/{id} | Cancel an order |
| [**confirm_order_by_id**](OrdersAPIClient.md#confirm_order_by_id) | **POST** /orders/{id}/confirm | Confirm draft for fulfillment |
| [**create_order**](OrdersAPIClient.md#create_order) | **POST** /orders | Create a new order |
| [**estimate_order_costs**](OrdersAPIClient.md#estimate_order_costs) | **POST** /orders/estimate-costs | Estimate order costs |
| [**get_order_by_id**](OrdersAPIClient.md#get_order_by_id) | **GET** /orders/{id} | Get order data |
| [**get_orders**](OrdersAPIClient.md#get_orders) | **GET** /orders | Get list of orders |
| [**update_order_by_id**](OrdersAPIClient.md#update_order_by_id) | **PUT** /orders/{id} | Update order data |


## cancel_order_by_id

> <CreateOrder200Response> cancel_order_by_id(id, opts)

Cancel an order

Cancels pending order or draft. Charged amount is returned to the store owner's credit card.

### Examples

```ruby
require 'time'
require 'printful_client'
# setup authorization
Printful.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Printful::OrdersAPIClient.new
id = nil # GetOrderByIdIdParameter | Order ID (integer) or External ID (if prefixed with @)
opts = {
  x_pf_store_id: 'x_pf_store_id_example' # String | Use this to specify which store you want to use (required only for account level token)
}

begin
  # Cancel an order
  result = api_instance.cancel_order_by_id(id, opts)
  p result
rescue Printful::ApiError => e
  puts "Error when calling OrdersAPIClient->cancel_order_by_id: #{e}"
end
```

#### Using the cancel_order_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateOrder200Response>, Integer, Hash)> cancel_order_by_id_with_http_info(id, opts)

```ruby
begin
  # Cancel an order
  data, status_code, headers = api_instance.cancel_order_by_id_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateOrder200Response>
rescue Printful::ApiError => e
  puts "Error when calling OrdersAPIClient->cancel_order_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**GetOrderByIdIdParameter**](.md) | Order ID (integer) or External ID (if prefixed with @) |  |
| **x_pf_store_id** | **String** | Use this to specify which store you want to use (required only for account level token) | [optional] |

### Return type

[**CreateOrder200Response**](CreateOrder200Response.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## confirm_order_by_id

> <CreateOrder200Response> confirm_order_by_id(id, opts)

Confirm draft for fulfillment

Approves for fulfillment an order that was saved as a draft. Store owner's credit card is charged when the order is submitted for fulfillment.

### Examples

```ruby
require 'time'
require 'printful_client'
# setup authorization
Printful.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Printful::OrdersAPIClient.new
id = nil # GetOrderByIdIdParameter | Order ID (integer) or External ID (if prefixed with @)
opts = {
  x_pf_store_id: 'x_pf_store_id_example' # String | Use this to specify which store you want to use (required only for account level token)
}

begin
  # Confirm draft for fulfillment
  result = api_instance.confirm_order_by_id(id, opts)
  p result
rescue Printful::ApiError => e
  puts "Error when calling OrdersAPIClient->confirm_order_by_id: #{e}"
end
```

#### Using the confirm_order_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateOrder200Response>, Integer, Hash)> confirm_order_by_id_with_http_info(id, opts)

```ruby
begin
  # Confirm draft for fulfillment
  data, status_code, headers = api_instance.confirm_order_by_id_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateOrder200Response>
rescue Printful::ApiError => e
  puts "Error when calling OrdersAPIClient->confirm_order_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**GetOrderByIdIdParameter**](.md) | Order ID (integer) or External ID (if prefixed with @) |  |
| **x_pf_store_id** | **String** | Use this to specify which store you want to use (required only for account level token) | [optional] |

### Return type

[**CreateOrder200Response**](CreateOrder200Response.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_order

> <CreateOrder200Response> create_order(order, opts)

Create a new order

Creates a new order and optionally submits it for fulfillment ([See examples](#section/Orders-API-examples))

### Examples

```ruby
require 'time'
require 'printful_client'
# setup authorization
Printful.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Printful::OrdersAPIClient.new
order = Printful::Order.new({recipient: Printful::Address.new, items: [Printful::Item.new]}) # Order | POST request body
opts = {
  confirm: true, # Boolean | Automatically submit the newly created order for fulfillment (skip the Draft phase)
  update_existing: true, # Boolean | Try to update existing order if an order with the specified external_id already exists
  x_pf_store_id: 'x_pf_store_id_example' # String | Use this to specify which store you want to use (required only for account level token)
}

begin
  # Create a new order
  result = api_instance.create_order(order, opts)
  p result
rescue Printful::ApiError => e
  puts "Error when calling OrdersAPIClient->create_order: #{e}"
end
```

#### Using the create_order_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateOrder200Response>, Integer, Hash)> create_order_with_http_info(order, opts)

```ruby
begin
  # Create a new order
  data, status_code, headers = api_instance.create_order_with_http_info(order, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateOrder200Response>
rescue Printful::ApiError => e
  puts "Error when calling OrdersAPIClient->create_order_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order** | [**Order**](Order.md) | POST request body |  |
| **confirm** | **Boolean** | Automatically submit the newly created order for fulfillment (skip the Draft phase) | [optional] |
| **update_existing** | **Boolean** | Try to update existing order if an order with the specified external_id already exists | [optional] |
| **x_pf_store_id** | **String** | Use this to specify which store you want to use (required only for account level token) | [optional] |

### Return type

[**CreateOrder200Response**](CreateOrder200Response.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## estimate_order_costs

> <EstimateOrderCosts200Response> estimate_order_costs(order, opts)

Estimate order costs

Calculates the estimated order costs including item costs, print costs (back prints, inside labels etc.), shipping and taxes

### Examples

```ruby
require 'time'
require 'printful_client'
# setup authorization
Printful.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Printful::OrdersAPIClient.new
order = Printful::Order.new({recipient: Printful::Address.new, items: [Printful::Item.new]}) # Order | POST request body
opts = {
  x_pf_store_id: 'x_pf_store_id_example' # String | Use this to specify which store you want to use (required only for account level token)
}

begin
  # Estimate order costs
  result = api_instance.estimate_order_costs(order, opts)
  p result
rescue Printful::ApiError => e
  puts "Error when calling OrdersAPIClient->estimate_order_costs: #{e}"
end
```

#### Using the estimate_order_costs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EstimateOrderCosts200Response>, Integer, Hash)> estimate_order_costs_with_http_info(order, opts)

```ruby
begin
  # Estimate order costs
  data, status_code, headers = api_instance.estimate_order_costs_with_http_info(order, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EstimateOrderCosts200Response>
rescue Printful::ApiError => e
  puts "Error when calling OrdersAPIClient->estimate_order_costs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order** | [**Order**](Order.md) | POST request body |  |
| **x_pf_store_id** | **String** | Use this to specify which store you want to use (required only for account level token) | [optional] |

### Return type

[**EstimateOrderCosts200Response**](EstimateOrderCosts200Response.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_order_by_id

> <CreateOrder200Response> get_order_by_id(id, opts)

Get order data

Returns order data by ID or External ID.

### Examples

```ruby
require 'time'
require 'printful_client'
# setup authorization
Printful.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Printful::OrdersAPIClient.new
id = nil # GetOrderByIdIdParameter | Order ID (integer) or External ID (if prefixed with @)
opts = {
  x_pf_store_id: 'x_pf_store_id_example' # String | Use this to specify which store you want to use (required only for account level token)
}

begin
  # Get order data
  result = api_instance.get_order_by_id(id, opts)
  p result
rescue Printful::ApiError => e
  puts "Error when calling OrdersAPIClient->get_order_by_id: #{e}"
end
```

#### Using the get_order_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateOrder200Response>, Integer, Hash)> get_order_by_id_with_http_info(id, opts)

```ruby
begin
  # Get order data
  data, status_code, headers = api_instance.get_order_by_id_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateOrder200Response>
rescue Printful::ApiError => e
  puts "Error when calling OrdersAPIClient->get_order_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**GetOrderByIdIdParameter**](.md) | Order ID (integer) or External ID (if prefixed with @) |  |
| **x_pf_store_id** | **String** | Use this to specify which store you want to use (required only for account level token) | [optional] |

### Return type

[**CreateOrder200Response**](CreateOrder200Response.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_orders

> <GetOrders200Response> get_orders(opts)

Get list of orders

Returns list of order objects from your store

### Examples

```ruby
require 'time'
require 'printful_client'
# setup authorization
Printful.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Printful::OrdersAPIClient.new
opts = {
  status: 'status_example', # String | Filter by order status
  offset: 56, # Integer | Result set offset
  limit: 56 # Integer | Number of items per page (max 100)
}

begin
  # Get list of orders
  result = api_instance.get_orders(opts)
  p result
rescue Printful::ApiError => e
  puts "Error when calling OrdersAPIClient->get_orders: #{e}"
end
```

#### Using the get_orders_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetOrders200Response>, Integer, Hash)> get_orders_with_http_info(opts)

```ruby
begin
  # Get list of orders
  data, status_code, headers = api_instance.get_orders_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetOrders200Response>
rescue Printful::ApiError => e
  puts "Error when calling OrdersAPIClient->get_orders_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | Filter by order status | [optional] |
| **offset** | **Integer** | Result set offset | [optional] |
| **limit** | **Integer** | Number of items per page (max 100) | [optional] |

### Return type

[**GetOrders200Response**](GetOrders200Response.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_order_by_id

> <CreateOrder200Response> update_order_by_id(id, order, opts)

Update order data

 Updates unsubmitted order and optionally submits it for the fulfillment.   Note that you need to post only the fields that need to be changed, not all required fields.   If items array is given in the update data, the items will be:   a) updated, if the update data contains the item id or external_id parameter that alreay exists   b) deleted, if the request doesn't contain the item with previously existing id   c) created as new if the id is not given or does not already exist 

### Examples

```ruby
require 'time'
require 'printful_client'
# setup authorization
Printful.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Printful::OrdersAPIClient.new
id = nil # GetOrderByIdIdParameter | Order ID (integer) or External ID (if prefixed with @)
order = Printful::Order.new({recipient: Printful::Address.new, items: [Printful::Item.new]}) # Order | POST request body
opts = {
  confirm: true, # Boolean | Automatically submit the newly created order for fulfillment (skip the Draft phase)
  x_pf_store_id: 'x_pf_store_id_example' # String | Use this to specify which store you want to use (required only for account level token)
}

begin
  # Update order data
  result = api_instance.update_order_by_id(id, order, opts)
  p result
rescue Printful::ApiError => e
  puts "Error when calling OrdersAPIClient->update_order_by_id: #{e}"
end
```

#### Using the update_order_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateOrder200Response>, Integer, Hash)> update_order_by_id_with_http_info(id, order, opts)

```ruby
begin
  # Update order data
  data, status_code, headers = api_instance.update_order_by_id_with_http_info(id, order, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateOrder200Response>
rescue Printful::ApiError => e
  puts "Error when calling OrdersAPIClient->update_order_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**GetOrderByIdIdParameter**](.md) | Order ID (integer) or External ID (if prefixed with @) |  |
| **order** | [**Order**](Order.md) | POST request body |  |
| **confirm** | **Boolean** | Automatically submit the newly created order for fulfillment (skip the Draft phase) | [optional] |
| **x_pf_store_id** | **String** | Use this to specify which store you want to use (required only for account level token) | [optional] |

### Return type

[**CreateOrder200Response**](CreateOrder200Response.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

