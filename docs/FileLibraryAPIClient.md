# Printful::FileLibraryAPIClient

All URIs are relative to *https://api.printful.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_file**](FileLibraryAPIClient.md#add_file) | **POST** /files | Add a new file |
| [**get_file**](FileLibraryAPIClient.md#get_file) | **GET** /files/{id} | Get file |
| [**thread_colors**](FileLibraryAPIClient.md#thread_colors) | **POST** /files/thread-colors | Return available thread colors from provided image URL |


## add_file

> <AddFile200Response> add_file(file, opts)

Add a new file

Adds a new File to the library by providing URL of the file.  If a file with identical URL already exists, then the original file is returned. If a file does not exist, a new file is created.  [See examples](#section/File-Library-API-examples/Add-a-new-file) 

### Examples

```ruby
require 'time'
require 'printful_client'
# setup authorization
Printful.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Printful::FileLibraryAPIClient.new
file = Printful::File.new({url: 'https://www.example.com/files/tshirts/example.png'}) # File | POST request body
opts = {
  x_pf_store_id: 'x_pf_store_id_example' # String | Use this to specify which store you want to use (required only for account level token)
}

begin
  # Add a new file
  result = api_instance.add_file(file, opts)
  p result
rescue Printful::ApiError => e
  puts "Error when calling FileLibraryAPIClient->add_file: #{e}"
end
```

#### Using the add_file_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddFile200Response>, Integer, Hash)> add_file_with_http_info(file, opts)

```ruby
begin
  # Add a new file
  data, status_code, headers = api_instance.add_file_with_http_info(file, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddFile200Response>
rescue Printful::ApiError => e
  puts "Error when calling FileLibraryAPIClient->add_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file** | [**File**](File.md) | POST request body |  |
| **x_pf_store_id** | **String** | Use this to specify which store you want to use (required only for account level token) | [optional] |

### Return type

[**AddFile200Response**](AddFile200Response.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_file

> <AddFile200Response> get_file(id, opts)

Get file

Returns information about the given file.

### Examples

```ruby
require 'time'
require 'printful_client'
# setup authorization
Printful.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Printful::FileLibraryAPIClient.new
id = 56 # Integer | File ID.
opts = {
  x_pf_store_id: 'x_pf_store_id_example' # String | Use this to specify which store you want to use (required only for account level token)
}

begin
  # Get file
  result = api_instance.get_file(id, opts)
  p result
rescue Printful::ApiError => e
  puts "Error when calling FileLibraryAPIClient->get_file: #{e}"
end
```

#### Using the get_file_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddFile200Response>, Integer, Hash)> get_file_with_http_info(id, opts)

```ruby
begin
  # Get file
  data, status_code, headers = api_instance.get_file_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddFile200Response>
rescue Printful::ApiError => e
  puts "Error when calling FileLibraryAPIClient->get_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | File ID. |  |
| **x_pf_store_id** | **String** | Use this to specify which store you want to use (required only for account level token) | [optional] |

### Return type

[**AddFile200Response**](AddFile200Response.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## thread_colors

> <ThreadColors200Response> thread_colors(thread_colors_request)

Return available thread colors from provided image URL

Returns colors in hexadecimal format.  Returned thread colors are matched as closely as possible to provided image colors.  [See examples](#section/File-Library-API-examples/Suggest-thread-colors) 

### Examples

```ruby
require 'time'
require 'printful_client'

api_instance = Printful::FileLibraryAPIClient.new
thread_colors_request = Printful::ThreadColorsRequest.new # ThreadColorsRequest | POST request body

begin
  # Return available thread colors from provided image URL
  result = api_instance.thread_colors(thread_colors_request)
  p result
rescue Printful::ApiError => e
  puts "Error when calling FileLibraryAPIClient->thread_colors: #{e}"
end
```

#### Using the thread_colors_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ThreadColors200Response>, Integer, Hash)> thread_colors_with_http_info(thread_colors_request)

```ruby
begin
  # Return available thread colors from provided image URL
  data, status_code, headers = api_instance.thread_colors_with_http_info(thread_colors_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ThreadColors200Response>
rescue Printful::ApiError => e
  puts "Error when calling FileLibraryAPIClient->thread_colors_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **thread_colors_request** | [**ThreadColorsRequest**](ThreadColorsRequest.md) | POST request body |  |

### Return type

[**ThreadColors200Response**](ThreadColors200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

