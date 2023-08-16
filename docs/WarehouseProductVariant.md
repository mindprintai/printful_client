# Printful::WarehouseProductVariant

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Product variant ID | [optional] |
| **name** | **String** | Name of product variant | [optional] |
| **sku** | **String** | SKU of product variant | [optional] |
| **image_url** | **String** | Image URL of product variant | [optional] |
| **retail_price** | **Float** | Retail price of product variant | [optional] |
| **quantity** | **Integer** | Quantity of product variant in our stock | [optional] |
| **length** | **Float** | Length of product variant | [optional] |
| **width** | **Float** | Width of product variant | [optional] |
| **height** | **Float** | Height of product variant | [optional] |
| **weight** | **Float** | Weight of product variant | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::WarehouseProductVariant.new(
  id: 12,
  name: SomeName,
  sku: some-sku-12,
  image_url: url.to/image/variant.png,
  retail_price: 1.1,
  quantity: 10,
  length: 3.21,
  width: 2.13,
  height: 3.11,
  weight: 1.11
)
```

