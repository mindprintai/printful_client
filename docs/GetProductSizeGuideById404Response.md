# Printful::GetProductSizeGuideById404Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **Integer** | Response status code &#x60;404&#x60; | [optional] |
| **result** | **String** | Actual error message | [optional] |
| **error** | [**GetProductSizeGuideById404ResponseError**](GetProductSizeGuideById404ResponseError.md) |  | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::GetProductSizeGuideById404Response.new(
  code: 404,
  result: Not found,
  error: null
)
```

