# Printful::ShippingRateAPIClient

All URIs are relative to *https://api.printful.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**calculate_shipping_rates**](ShippingRateAPIClient.md#calculate_shipping_rates) | **POST** /shipping/rates | Calculate shipping rates |


## calculate_shipping_rates

> <CalculateShippingRates200Response> calculate_shipping_rates(calculate_shipping_rates, opts)

Calculate shipping rates

Returns available shipping options and rates for the given list of products.

### Examples

```ruby
require 'time'
require 'printful_client'
# setup authorization
Printful.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Printful::ShippingRateAPIClient.new
calculate_shipping_rates = Printful::CalculateShippingRates.new({recipient: Printful::AddressInfo.new({address1: '19749 Dearborn St', city: 'Chatsworth', country_code: 'US'}), items: [Printful::ItemInfo.new({quantity: 10})]}) # CalculateShippingRates | POST request body
opts = {
  x_pf_store_id: 'x_pf_store_id_example' # String | Use this to specify which store you want to use (required only for account level token)
}

begin
  # Calculate shipping rates
  result = api_instance.calculate_shipping_rates(calculate_shipping_rates, opts)
  p result
rescue Printful::ApiError => e
  puts "Error when calling ShippingRateAPIClient->calculate_shipping_rates: #{e}"
end
```

#### Using the calculate_shipping_rates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CalculateShippingRates200Response>, Integer, Hash)> calculate_shipping_rates_with_http_info(calculate_shipping_rates, opts)

```ruby
begin
  # Calculate shipping rates
  data, status_code, headers = api_instance.calculate_shipping_rates_with_http_info(calculate_shipping_rates, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CalculateShippingRates200Response>
rescue Printful::ApiError => e
  puts "Error when calling ShippingRateAPIClient->calculate_shipping_rates_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **calculate_shipping_rates** | [**CalculateShippingRates**](CalculateShippingRates.md) | POST request body |  |
| **x_pf_store_id** | **String** | Use this to specify which store you want to use (required only for account level token) | [optional] |

### Return type

[**CalculateShippingRates200Response**](CalculateShippingRates200Response.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

