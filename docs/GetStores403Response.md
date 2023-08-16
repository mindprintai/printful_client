# Printful::GetStores403Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **Integer** | Response status code &#x60;403&#x60; | [optional] |
| **result** | **String** | Actual error message | [optional] |
| **error** | [**GetStores403ResponseError**](GetStores403ResponseError.md) |  | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::GetStores403Response.new(
  code: 403,
  result: This endpoint requires Oauth authentication!.,
  error: null
)
```

