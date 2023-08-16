# Printful::CatalogFileOption

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | File option identifier. Use this to specify which option you are adding to your file in a request. | [optional] |
| **type** | **String** | The type of the value property when using this option in a request. | [optional] |
| **title** | **String** |  | [optional] |
| **additional_price** | **Float** | Additional cost this will add to the item. | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::CatalogFileOption.new(
  id: full_color,
  type: bool,
  title: Unlimited color,
  additional_price: 3.25
)
```

