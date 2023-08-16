# Printful::ProductVariant

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **variant_id** | **Integer** | Variant ID | [optional] |
| **product_id** | **Integer** | Product ID of this variant | [optional] |
| **image** | **String** | URL of a sample image for this variant | [optional] |
| **name** | **String** | Display name of this variant | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::ProductVariant.new(
  variant_id: 3001,
  product_id: 301,
  image: https://files.cdn.printful.com/products/71/5309_1581412541.jpg,
  name: Bella + Canvas 3001 Unisex Short Sleeve Jersey T-Shirt with Tear Away Label (White / 4XL)
)
```

