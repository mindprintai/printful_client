# Printful::Variant

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Variant ID, use this to specify the product when creating orders | [optional] |
| **product_id** | **Integer** | ID of the product that this variant belongs to | [optional] |
| **name** | **String** | Display name | [optional] |
| **size** | **String** | Item size | [optional] |
| **color** | **String** | Item color | [optional] |
| **color_code** | **String** | Hexadecimal RGB color code. May not exactly reflect the real-world color | [optional] |
| **color_code2** | **String** | Secondary hexadecimal RGB color code. May not exactly reflect the real-world color | [optional] |
| **image** | **String** | URL of a preview image for this variant | [optional] |
| **price** | **String** | Variant&#39;s price (can change depending on print files and optional settings) | [optional] |
| **in_stock** | **Boolean** | Stock availability of this variant | [optional] |
| **availability_regions** | **Hash&lt;String, Object&gt;** | Map of [region code, region name] of regions where the variant is available for fulfillment | [optional] |
| **availability_status** | [**Array&lt;AvailabilityStatus&gt;**](AvailabilityStatus.md) | Detailed stock status per region | [optional] |
| **material** | [**Array&lt;Material&gt;**](Material.md) | A list of materials this Variant is composed of | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::Variant.new(
  id: 100,
  product_id: 12,
  name: Gildan 64000 Unisex Softstyle T-Shirt with Tear Away (Black / 2XL),
  size: 2XL,
  color: Black,
  color_code: #14191e,
  color_code2: null,
  image: https://files.cdn.printful.com/products/12/629_1517916489.jpg,
  price: 9.85,
  in_stock: true,
  availability_regions: {&quot;US&quot;:&quot;USA&quot;,&quot;EU&quot;:&quot;Europe&quot;},
  availability_status: null,
  material: null
)
```

