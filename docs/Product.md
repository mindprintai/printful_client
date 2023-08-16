# Printful::Product

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Product ID | [optional] |
| **main_category_id** | **Integer** | Main category of product | [optional] |
| **type** | **String** | Product type identifier | [optional] |
| **type_name** | **String** | Product type name | [optional] |
| **title** | **String** | Product title | [optional] |
| **brand** | **String** | Brand name | [optional] |
| **model** | **String** | Model name | [optional] |
| **image** | **String** | URL of a sample image for this product | [optional] |
| **variant_count** | **Integer** | Number of available variants for this product | [optional] |
| **currency** | **String** | Currency in which prices are returned | [optional] |
| **files** | [**Array&lt;FileType&gt;**](FileType.md) | Definitions of Print/Mockup file categories that can be attached to this product | [optional] |
| **options** | [**Array&lt;OptionType&gt;**](OptionType.md) | Definitions of additional options that are available for this product [See examples](#section/Options) | [optional] |
| **is_discontinued** | **Boolean** | If product is disabled in push | [optional] |
| **avg_fulfillment_time** | **Float** | Average number of days for order to be fulfilled | [optional] |
| **description** | **String** | Product description | [optional] |
| **techniques** | [**Array&lt;AvailableTechnique&gt;**](AvailableTechnique.md) | Available techniques | [optional] |
| **origin_country** | **String** | The origin country for inside label | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::Product.new(
  id: 13,
  main_category_id: 24,
  type: T-SHIRT,
  type_name: T-Shirt,
  title: Unisex Staple T-Shirt | Bella + Canvas 3001,
  brand: Gildan,
  model: 2200 Ultra Cotton Tank Top,
  image: https://files.cdn.printful.com/products/12/product_1550594502.jpg,
  variant_count: 30,
  currency: EUR,
  files: null,
  options: null,
  is_discontinued: false,
  avg_fulfillment_time: 4.3,
  description: null,
  techniques: null,
  origin_country: Nicaragua
)
```

