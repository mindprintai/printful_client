# Printful::CreateSyncProduct400ResponseError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reason** | **String** |  | [optional] |
| **message** | **String** |  | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::CreateSyncProduct400ResponseError.new(
  reason: BadRequest,
  message: Missing required parameters
)
```

