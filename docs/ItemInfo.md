# Printful::ItemInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **variant_id** | **String** | Catalog Variant ID of the item ordered. See [Catalog API](#tag/Catalog-API) &lt;span style&#x3D;\&quot;color:red\&quot;&gt;*Required if no other IDs given&lt;/span&gt; | [optional] |
| **external_variant_id** | **String** | External Variant ID of the item ordered. See [Ecommerce Platform Sync API](#tag/Ecommerce-Platform-Sync-API). &lt;span style&#x3D;\&quot;color:red\&quot;&gt;*Required if no other IDs given&lt;/span&gt; | [optional] |
| **warehouse_product_variant_id** | **String** | Warehouse product variant ID of the item ordered. See [Warehouse Products API](#tag/Warehouse-Products-API). &lt;span style&#x3D;\&quot;color:red\&quot;&gt;*Required if no other IDs given&lt;/span&gt; | [optional] |
| **quantity** | **Integer** | Number of items ordered |  |
| **value** | **String** | Item retail value - optional but can help to properly calculate | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::ItemInfo.new(
  variant_id: 202,
  external_variant_id: 1001,
  warehouse_product_variant_id: 2,
  quantity: 10,
  value: 2.99
)
```

