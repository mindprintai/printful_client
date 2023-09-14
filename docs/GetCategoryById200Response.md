# Printful::GetCategoryById200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **Integer** | Response status code &#x60;200&#x60; | [optional] |
| **result** | [**GetCategoryById200ResponseAllOfResult**](GetCategoryById200ResponseAllOfResult.md) |  | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::GetCategoryById200Response.new(
  code: 200,
  result: null
)
```

