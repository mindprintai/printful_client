# Printful::CreateSyncProduct400Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **Integer** | Response status code &#x60;400&#x60; | [optional] |
| **result** | **String** | Actual error message | [optional] |
| **error** | [**CreateSyncProduct400ResponseError**](CreateSyncProduct400ResponseError.md) |  | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::CreateSyncProduct400Response.new(
  code: 400,
  result: Missing required parameters,
  error: null
)
```

