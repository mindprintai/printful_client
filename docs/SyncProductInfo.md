# Printful::SyncProductInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sync_product** | [**SyncProduct**](SyncProduct.md) |  | [optional] |
| **sync_variants** | [**Array&lt;SyncVariant&gt;**](SyncVariant.md) | Array of Sync Variants available for the selected product | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::SyncProductInfo.new(
  sync_product: null,
  sync_variants: null
)
```

