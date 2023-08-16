# Printful::Item

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Line item ID | [optional] |
| **external_id** | **String** | Line item ID from the external system | [optional] |
| **variant_id** | **Integer** | Variant ID of the item ordered. See [Catalog API](#tag/Catalog-API) | [optional] |
| **sync_variant_id** | **Integer** | Sync variant ID of the item ordered. [Example](#section/Orders-API-examples/Using-a-sync-variant). | [optional] |
| **external_variant_id** | **String** | External variant ID of the item ordered. [Example](#section/Orders-API-examples/Using-sync-variant-with-external-ID). | [optional] |
| **warehouse_product_variant_id** | **Integer** | Warehousing product variant ID of the item ordered. See Warehouse Products API | [optional] |
| **product_template_id** | **Integer** | The ID of a Product Template to generate the printfiles from. The &#x60;variant_id&#x60; field must be passed as well. Can&#39;t be combined with following fields: &#x60;sync_variant_id&#x60;, &#x60;external_variant_id&#x60;, &#x60;warehouse_product_variant_id&#x60;, &#x60;files&#x60;, &#x60;options&#x60;, &#x60;external_product_id&#x60;. [Examples](#section/Orders-API-examples/Using-a-product-template).  | [optional] |
| **external_product_id** | **String** | The External Product ID associated with a Product Template to generate the printfiles from. The &#x60;variant_id&#x60; field must be passed as well. Can&#39;t be combined with following fields: &#x60;sync_variant_id&#x60;, &#x60;external_variant_id&#x60;, &#x60;warehouse_product_variant_id&#x60;, &#x60;files&#x60;, &#x60;options&#x60;, &#x60;product_template_id&#x60;. [Examples](#section/Orders-API-examples/Using-a-product-template).  | [optional] |
| **quantity** | **Integer** | Number of items ordered (Limited to 1000 for one item) | [optional] |
| **price** | **String** | Printful price of the item | [optional] |
| **retail_price** | **String** | Original retail price of the item to be displayed on the packing slip | [optional] |
| **name** | **String** | Display name of the item. If not given, a name from the Printful system will be displayed on the packing slip | [optional] |
| **product** | [**ProductVariant**](ProductVariant.md) |  | [optional] |
| **files** | [**Array&lt;ItemFilesInner&gt;**](ItemFilesInner.md) | Array of attached printfiles / preview images | [optional] |
| **options** | [**Array&lt;Option&gt;**](Option.md) | Array of additional options for this product [See examples](#section/Options) | [optional] |
| **sku** | **String** | Product identifier (SKU) from the external system | [optional] |
| **discontinued** | **Boolean** | Whether the item belongs to discontinued product i.e. it&#39;s permanently unavailable | [optional] |
| **out_of_stock** | **Boolean** | Whether the item is out of stock i.e. temporarily unavailable | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::Item.new(
  id: 1,
  external_id: item-1,
  variant_id: 1,
  sync_variant_id: 1,
  external_variant_id: variant-1,
  warehouse_product_variant_id: 1,
  product_template_id: 1,
  external_product_id: template-123,
  quantity: 1,
  price: 13.00,
  retail_price: 13.00,
  name: Enhanced Matte Paper Poster 18×24,
  product: null,
  files: null,
  options: null,
  sku: null,
  discontinued: true,
  out_of_stock: true
)
```

