# Printful::GetStores403ResponseError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reason** | **Integer** |  | [optional] |
| **message** | **String** |  | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::GetStores403ResponseError.new(
  reason: 403,
  message: This endpoint requires Oauth authentication!.
)
```

