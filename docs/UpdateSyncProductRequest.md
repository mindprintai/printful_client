# Printful::UpdateSyncProductRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sync_product** | [**SyncProduct**](SyncProduct.md) |  | [optional] |
| **sync_variants** | [**Array&lt;UpdateSyncProductRequestSyncVariantsInner&gt;**](UpdateSyncProductRequestSyncVariantsInner.md) | Information about the Sync Variants | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::UpdateSyncProductRequest.new(
  sync_product: null,
  sync_variants: null
)
```

