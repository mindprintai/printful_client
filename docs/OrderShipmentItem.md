# Printful::OrderShipmentItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **item_id** | **Integer** | Line item ID | [optional] |
| **quantity** | **Integer** | Quantity of items in this shipment | [optional] |
| **picked** | **Integer** | A boolean indicating that the pickup stage of this item&#39;s fulfillment has been completed | [optional] |
| **printed** | **Integer** | A boolean indicting that the item has been printed, sublimated or sewed. | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::OrderShipmentItem.new(
  item_id: 1,
  quantity: 1,
  picked: 1,
  printed: 1
)
```

