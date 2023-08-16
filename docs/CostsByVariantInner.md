# Printful::CostsByVariantInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **variant_id** | **Integer** | Variant ID. See [Catalog API](#tag/Catalog-API). | [optional] |
| **variant_name** | **String** | Variant name. | [optional] |
| **product_id** | **Integer** | Product ID. See [Catalog API](#tag/Catalog-API). | [optional] |
| **fulfillment** | **Float** | All fulfillment costs that are charged by Printful, excluding shipping. | [optional] |
| **sales** | **Float** | Order retail price data. Available only if retail price fields are properly set up on the integration&#39;s side. | [optional] |
| **quantity** | **Integer** | Total quantity of items ordered from this product in the selected period. | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::CostsByVariantInner.new(
  variant_id: null,
  variant_name: null,
  product_id: null,
  fulfillment: null,
  sales: null,
  quantity: null
)
```

