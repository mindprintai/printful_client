# Printful::MockupGeneratorAPIClient

All URIs are relative to *https://api.printful.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_generator_task**](MockupGeneratorAPIClient.md#create_generator_task) | **POST** /mockup-generator/create-task/{id} | Create a mockup generation task |
| [**get_printfiles**](MockupGeneratorAPIClient.md#get_printfiles) | **GET** /mockup-generator/printfiles/{id} | Retrieve product variant printfiles |
| [**get_task**](MockupGeneratorAPIClient.md#get_task) | **GET** /mockup-generator/task | Mockup generation task result |
| [**get_templates**](MockupGeneratorAPIClient.md#get_templates) | **GET** /mockup-generator/templates/{id} | Layout templates |


## create_generator_task

> <CreateGeneratorTask200Response> create_generator_task(id, create_generation_task, opts)

Create a mockup generation task

Creates an asynchronous mockup generation task. Generation result can be retrieved using mockup generation task retrieval endpoint.<br> **Rate limiting**: Up to 10 requests per 60 seconds for established stores; 2 requests per 60 seconds for new stores. Currently available rate is returned in response headers. A 60 seconds lockout is applied if request count is exceeded. We also limit the number of files that may be generated to 20,000 files per account in a 24-hour period. 

### Examples

```ruby
require 'time'
require 'printful_client'
# setup authorization
Printful.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Printful::MockupGeneratorAPIClient.new
id = 56 # Integer | Product ID.
create_generation_task = Printful::CreateGenerationTask.new # CreateGenerationTask | POST request body
opts = {
  x_pf_store_id: 'x_pf_store_id_example' # String | Use this to specify which store you want to use (required only for account level token)
}

begin
  # Create a mockup generation task
  result = api_instance.create_generator_task(id, create_generation_task, opts)
  p result
rescue Printful::ApiError => e
  puts "Error when calling MockupGeneratorAPIClient->create_generator_task: #{e}"
end
```

#### Using the create_generator_task_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateGeneratorTask200Response>, Integer, Hash)> create_generator_task_with_http_info(id, create_generation_task, opts)

```ruby
begin
  # Create a mockup generation task
  data, status_code, headers = api_instance.create_generator_task_with_http_info(id, create_generation_task, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateGeneratorTask200Response>
rescue Printful::ApiError => e
  puts "Error when calling MockupGeneratorAPIClient->create_generator_task_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Product ID. |  |
| **create_generation_task** | [**CreateGenerationTask**](CreateGenerationTask.md) | POST request body |  |
| **x_pf_store_id** | **String** | Use this to specify which store you want to use (required only for account level token) | [optional] |

### Return type

[**CreateGeneratorTask200Response**](CreateGeneratorTask200Response.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_printfiles

> <GetPrintfiles200Response> get_printfiles(id, opts)

Retrieve product variant printfiles

List of printfiles available for products variants. Printfile indicates what file resolution should be used to create a mockup or submit an order.  <div class=\"alert alert-info\"> This endpoint uses DTG as a default printing technique for products with more than one technique available. For products with DTG and more techniques available please specify the correct technique in query by using the `technique` parameter. For more information read the <a href=\"#section/Mockup-Generator-API-examples\">examples</a>. </div> 

### Examples

```ruby
require 'time'
require 'printful_client'
# setup authorization
Printful.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Printful::MockupGeneratorAPIClient.new
id = 56 # Integer | Product ID.
opts = {
  orientation: 'horizontal', # String | 
  technique: 'technique_example', # String | 
  x_pf_store_id: 'x_pf_store_id_example' # String | Use this to specify which store you want to use (required only for account level token)
}

begin
  # Retrieve product variant printfiles
  result = api_instance.get_printfiles(id, opts)
  p result
rescue Printful::ApiError => e
  puts "Error when calling MockupGeneratorAPIClient->get_printfiles: #{e}"
end
```

#### Using the get_printfiles_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPrintfiles200Response>, Integer, Hash)> get_printfiles_with_http_info(id, opts)

```ruby
begin
  # Retrieve product variant printfiles
  data, status_code, headers = api_instance.get_printfiles_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPrintfiles200Response>
rescue Printful::ApiError => e
  puts "Error when calling MockupGeneratorAPIClient->get_printfiles_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Product ID. |  |
| **orientation** | **String** |  | [optional] |
| **technique** | **String** |  | [optional] |
| **x_pf_store_id** | **String** | Use this to specify which store you want to use (required only for account level token) | [optional] |

### Return type

[**GetPrintfiles200Response**](GetPrintfiles200Response.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_task

> <CreateGeneratorTask200Response> get_task(task_key, opts)

Mockup generation task result

Returns asynchronous mockup generation task result. If generation task is completed, it will contain a list of generated mockups.

### Examples

```ruby
require 'time'
require 'printful_client'
# setup authorization
Printful.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Printful::MockupGeneratorAPIClient.new
task_key = 'task_key_example' # String | Task key retrieved when creating the generation task.
opts = {
  x_pf_store_id: 'x_pf_store_id_example' # String | Use this to specify which store you want to use (required only for account level token)
}

begin
  # Mockup generation task result
  result = api_instance.get_task(task_key, opts)
  p result
rescue Printful::ApiError => e
  puts "Error when calling MockupGeneratorAPIClient->get_task: #{e}"
end
```

#### Using the get_task_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateGeneratorTask200Response>, Integer, Hash)> get_task_with_http_info(task_key, opts)

```ruby
begin
  # Mockup generation task result
  data, status_code, headers = api_instance.get_task_with_http_info(task_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateGeneratorTask200Response>
rescue Printful::ApiError => e
  puts "Error when calling MockupGeneratorAPIClient->get_task_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **task_key** | **String** | Task key retrieved when creating the generation task. |  |
| **x_pf_store_id** | **String** | Use this to specify which store you want to use (required only for account level token) | [optional] |

### Return type

[**CreateGeneratorTask200Response**](CreateGeneratorTask200Response.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_templates

> <GetTemplates200Response> get_templates(id, opts)

Layout templates

Retrieve list of templates that can be used for client-side positioning.  <div class=\"alert alert-info\"> This endpoint uses DTG as a default printing technique for product layouts with more than one technique available. For products with DTG and more techniques available please specify the correct technique in query by using the `technique` parameter. For more information read the <a href=\"#section/Mockup-Generator-API-examples\">examples</a>. </div> 

### Examples

```ruby
require 'time'
require 'printful_client'
# setup authorization
Printful.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Printful::MockupGeneratorAPIClient.new
id = 56 # Integer | Product ID.
opts = {
  orientation: 'horizontal', # String | 
  technique: 'technique_example', # String | 
  x_pf_store_id: 'x_pf_store_id_example' # String | Use this to specify which store you want to use (required only for account level token)
}

begin
  # Layout templates
  result = api_instance.get_templates(id, opts)
  p result
rescue Printful::ApiError => e
  puts "Error when calling MockupGeneratorAPIClient->get_templates: #{e}"
end
```

#### Using the get_templates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTemplates200Response>, Integer, Hash)> get_templates_with_http_info(id, opts)

```ruby
begin
  # Layout templates
  data, status_code, headers = api_instance.get_templates_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTemplates200Response>
rescue Printful::ApiError => e
  puts "Error when calling MockupGeneratorAPIClient->get_templates_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Product ID. |  |
| **orientation** | **String** |  | [optional] |
| **technique** | **String** |  | [optional] |
| **x_pf_store_id** | **String** | Use this to specify which store you want to use (required only for account level token) | [optional] |

### Return type

[**GetTemplates200Response**](GetTemplates200Response.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

