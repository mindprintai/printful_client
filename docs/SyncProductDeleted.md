# Printful::SyncProductDeleted

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | SyncProduct ID |  |
| **external_id** | **String** | Product ID from the Ecommerce platform |  |
| **name** | **String** | Product name |  |

## Example

```ruby
require 'printful_client'

instance = Printful::SyncProductDeleted.new(
  id: 13,
  external_id: 42352342133,
  name: T-shirt
)
```

