# Printful::GetSyncVariantById200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **Integer** | Response status code &#x60;200&#x60; | [optional] |
| **result** | [**SyncVariant**](SyncVariant.md) |  | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::GetSyncVariantById200Response.new(
  code: 200,
  result: null
)
```

