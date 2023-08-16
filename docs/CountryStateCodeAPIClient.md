# Printful::CountryStateCodeAPIClient

All URIs are relative to *https://api.printful.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_countries**](CountryStateCodeAPIClient.md#get_countries) | **GET** /countries | Retrieve country list |


## get_countries

> <GetCountries200Response> get_countries

Retrieve country list

Returns list of countries and states that are accepted by the Printful.

### Examples

```ruby
require 'time'
require 'printful_client'

api_instance = Printful::CountryStateCodeAPIClient.new

begin
  # Retrieve country list
  result = api_instance.get_countries
  p result
rescue Printful::ApiError => e
  puts "Error when calling CountryStateCodeAPIClient->get_countries: #{e}"
end
```

#### Using the get_countries_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCountries200Response>, Integer, Hash)> get_countries_with_http_info

```ruby
begin
  # Retrieve country list
  data, status_code, headers = api_instance.get_countries_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCountries200Response>
rescue Printful::ApiError => e
  puts "Error when calling CountryStateCodeAPIClient->get_countries_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetCountries200Response**](GetCountries200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

