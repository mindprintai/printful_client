# Printful::SyncVariant

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Sync Variant ID | [optional][readonly] |
| **external_id** | **String** | Variant ID from the Ecommerce platform | [optional] |
| **sync_product_id** | **Integer** | Sync Product ID that this variant belongs to | [optional][readonly] |
| **name** | **String** | Sync Variant name | [optional][readonly] |
| **synced** | **Boolean** | Indicates if this Sync Variant is properly linked with Printful product | [optional][readonly] |
| **variant_id** | **Integer** | Printful Variant ID that this Sync Variant is synced to | [optional] |
| **retail_price** | **String** | Retail price that this item is sold for | [optional] |
| **currency** | **String** | Currency in which prices are returned | [optional][readonly] |
| **is_ignored** | **Boolean** | Indicates if this Sync Variant is ignored | [optional] |
| **sku** | **String** | SKU of this Sync Variant | [optional] |
| **product** | [**SyncVariantProduct**](SyncVariantProduct.md) |  | [optional] |
| **files** | **Array&lt;File&gt;** | Array of attached printfiles / preview images | [optional] |
| **options** | [**Array&lt;ItemOption&gt;**](ItemOption.md) | Array of additional options for the configured product/variant [See examples](#section/Options) | [optional] |
| **main_category_id** | **Integer** | Printful Variant catalog category ID | [optional][readonly] |
| **warehouse_product_variant_id** | **Integer** | Warehousing variant ID. If sync variant is connected with a warehousing item, this is its ID | [optional][readonly] |

## Example

```ruby
require 'printful_client'

instance = Printful::SyncVariant.new(
  id: 10,
  external_id: 12312414,
  sync_product_id: 71,
  name: Red T-Shirt,
  synced: true,
  variant_id: 3001,
  retail_price: 29.99,
  currency: USD,
  is_ignored: true,
  sku: SKU1234,
  product: null,
  files: null,
  options: null,
  main_category_id: 24,
  warehouse_product_variant_id: 3002
)
```

