# Printful::SyncProduct

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | SyncProduct ID | [optional][readonly] |
| **external_id** | **String** | Product ID from the Ecommerce platform | [optional] |
| **name** | **String** | Product name |  |
| **variants** | **Integer** | Total number of Sync Variants belonging to this product | [optional][readonly] |
| **synced** | **Integer** | Number of synced Sync Variants belonging to this product | [optional][readonly] |
| **thumbnail** | **String** | Thumbnail image URL. Although we do not limit thumbnail image size, we recommend to keep it reasonably small. | [optional] |
| **thumbnail_url** | **String** | Thumbnail image for the product | [optional][readonly] |
| **is_ignored** | **Boolean** | Indicates if this Sync Product is ignored | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::SyncProduct.new(
  id: 13,
  external_id: 4235234213,
  name: T-shirt,
  variants: 10,
  synced: 10,
  thumbnail: *http://your-domain.com/path/to/thumbnail.png,
  thumbnail_url: *https://your-domain.com/path/to/image.png,
  is_ignored: null
)
```

