# Printful::Store

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Store ID | [optional] |
| **type** | **String** | Store type | [optional] |
| **name** | **String** | Store name | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::Store.new(
  id: 10,
  type: native,
  name: My Store
)
```

