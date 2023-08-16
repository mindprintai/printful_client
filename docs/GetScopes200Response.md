# Printful::GetScopes200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **Integer** | Response status code &#x60;200&#x60; | [optional] |
| **result** | [**GetScopes200ResponseAllOfResult**](GetScopes200ResponseAllOfResult.md) |  | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::GetScopes200Response.new(
  code: 200,
  result: null
)
```

