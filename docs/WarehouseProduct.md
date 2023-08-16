# Printful::WarehouseProduct

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Product ID | [optional] |
| **name** | **String** | Product name | [optional] |
| **status** | **String** | Product status:   **created** - product request created,   **active** - product request approved   **suspended** - product suspended   **declined** - product request declined   **draft** - product created as a draft | [optional] |
| **currency** | **String** | Currency | [optional] |
| **image_url** | **String** | Image URL of product | [optional] |
| **retail_price** | **Float** | Retail price of product | [optional] |
| **variants** | [**Array&lt;WarehouseProductVariant&gt;**](WarehouseProductVariant.md) | Array of product variants | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::WarehouseProduct.new(
  id: 12,
  name: Some product name,
  status: draft,
  currency: USD,
  image_url: url.to/your/image/location.png,
  retail_price: 12.99,
  variants: null
)
```

