# Printful::OAuthAPIClient

All URIs are relative to *https://api.printful.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_scopes**](OAuthAPIClient.md#get_scopes) | **GET** /oauth/scopes | Get scopes for token |


## get_scopes

> <GetScopes200Response> get_scopes

Get scopes for token

Returns a list of scopes associated with the token

### Examples

```ruby
require 'time'
require 'printful_client'
# setup authorization
Printful.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Printful::OAuthAPIClient.new

begin
  # Get scopes for token
  result = api_instance.get_scopes
  p result
rescue Printful::ApiError => e
  puts "Error when calling OAuthAPIClient->get_scopes: #{e}"
end
```

#### Using the get_scopes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetScopes200Response>, Integer, Hash)> get_scopes_with_http_info

```ruby
begin
  # Get scopes for token
  data, status_code, headers = api_instance.get_scopes_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetScopes200Response>
rescue Printful::ApiError => e
  puts "Error when calling OAuthAPIClient->get_scopes_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetScopes200Response**](GetScopes200Response.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

