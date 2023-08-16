# Printful::IncompleteItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Incomplete item name | [optional] |
| **quantity** | **Integer** | Incompleted item quantity | [optional] |
| **sync_variant_id** | **Integer** | Sync variant ID of the incompleted item. | [optional] |
| **external_variant_id** | **String** | External variant ID of the incompleted item. | [optional] |
| **external_line_item_id** | **String** | External order line item id. | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::IncompleteItem.new(
  name: Red T-Shirt,
  quantity: 1,
  sync_variant_id: 70,
  external_variant_id: external-id,
  external_line_item_id: external-line-item-id
)
```

