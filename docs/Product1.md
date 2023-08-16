# Printful::Product1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sync_product** | [**SyncProduct**](SyncProduct.md) |  |  |
| **sync_variants** | [**Array&lt;Product1SyncVariantsInner&gt;**](Product1SyncVariantsInner.md) | Information about the Sync Variants |  |

## Example

```ruby
require 'printful_client'

instance = Printful::Product1.new(
  sync_product: null,
  sync_variants: null
)
```

