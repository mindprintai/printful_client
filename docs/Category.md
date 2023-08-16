# Printful::Category

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Category ID | [optional] |
| **parent_id** | **Integer** | ID of the parent Category. If there is no parent Category, 0 is returned. | [optional] |
| **image_url** | **String** | The URL of the Category image | [optional] |
| **size** | **String** | The size of the category image | [optional] |
| **title** | **String** | Category title | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::Category.new(
  id: 24,
  parent_id: 6,
  image_url: https://s3.staging.printful.com/upload/catalog_category/b1/b1513c82696405fcc316fc611c57f132_t?v&#x3D;1646395980,
  size: null,
  title: T-Shirts
)
```

