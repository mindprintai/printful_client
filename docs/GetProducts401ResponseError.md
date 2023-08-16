# Printful::GetProducts401ResponseError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reason** | **String** |  | [optional] |
| **message** | **String** |  | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::GetProducts401ResponseError.new(
  reason: BadRequest,
  message: Malformed Authorization header.
)
```

