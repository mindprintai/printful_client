# Printful::TaxRateAPIClient

All URIs are relative to *https://api.printful.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**calculate_tax_rates**](TaxRateAPIClient.md#calculate_tax_rates) | **POST** /tax/rates | Calculate tax rate |
| [**get_tax_countries**](TaxRateAPIClient.md#get_tax_countries) | **GET** /tax/countries | Get a list of countries for tax calculation |


## calculate_tax_rates

> <CalculateTaxRates200Response> calculate_tax_rates(tax_request)

Calculate tax rate

Calculates sales tax rate for given address if required

### Examples

```ruby
require 'time'
require 'printful_client'

api_instance = Printful::TaxRateAPIClient.new
tax_request = Printful::TaxRequest.new({recipient: Printful::TaxAddressInfo.new({country_code: 'US', state_code: 'CA', city: 'Chatsworth', zip: '91311'})}) # TaxRequest | POST request body

begin
  # Calculate tax rate
  result = api_instance.calculate_tax_rates(tax_request)
  p result
rescue Printful::ApiError => e
  puts "Error when calling TaxRateAPIClient->calculate_tax_rates: #{e}"
end
```

#### Using the calculate_tax_rates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CalculateTaxRates200Response>, Integer, Hash)> calculate_tax_rates_with_http_info(tax_request)

```ruby
begin
  # Calculate tax rate
  data, status_code, headers = api_instance.calculate_tax_rates_with_http_info(tax_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CalculateTaxRates200Response>
rescue Printful::ApiError => e
  puts "Error when calling TaxRateAPIClient->calculate_tax_rates_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tax_request** | [**TaxRequest**](TaxRequest.md) | POST request body |  |

### Return type

[**CalculateTaxRates200Response**](CalculateTaxRates200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_tax_countries

> <GetTaxCountries200Response> get_tax_countries

Get a list of countries for tax calculation

Retrieve state list that requires sales tax calculation

### Examples

```ruby
require 'time'
require 'printful_client'

api_instance = Printful::TaxRateAPIClient.new

begin
  # Get a list of countries for tax calculation
  result = api_instance.get_tax_countries
  p result
rescue Printful::ApiError => e
  puts "Error when calling TaxRateAPIClient->get_tax_countries: #{e}"
end
```

#### Using the get_tax_countries_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTaxCountries200Response>, Integer, Hash)> get_tax_countries_with_http_info

```ruby
begin
  # Get a list of countries for tax calculation
  data, status_code, headers = api_instance.get_tax_countries_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTaxCountries200Response>
rescue Printful::ApiError => e
  puts "Error when calling TaxRateAPIClient->get_tax_countries_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetTaxCountries200Response**](GetTaxCountries200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

