# Printful::GetProducts401Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **Integer** | Response status code &#x60;401&#x60; | [optional] |
| **result** | **String** | Actual error message | [optional] |
| **error** | [**GetProducts401ResponseError**](GetProducts401ResponseError.md) |  | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::GetProducts401Response.new(
  code: 401,
  result: Malformed Authorization header.,
  error: null
)
```

