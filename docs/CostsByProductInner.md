# Printful::CostsByProductInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **Integer** | Product ID. See [Catalog API](#tag/Catalog-API). | [optional] |
| **product_name** | **String** | Product name. | [optional] |
| **fulfillment** | **Float** | All fulfillment costs that are charged by Printful, excluding shipping. | [optional] |
| **sales** | **Float** | Order retail price data. Available only if retail price fields are properly set up on the integration&#39;s side. | [optional] |
| **quantity** | **Integer** | Total quantity of items ordered from this product in the selected period. | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::CostsByProductInner.new(
  product_id: null,
  product_name: null,
  fulfillment: null,
  sales: null,
  quantity: null
)
```

