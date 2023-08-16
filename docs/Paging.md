# Printful::Paging

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total** | **Integer** | Total number of items available | [optional] |
| **offset** | **Integer** | Current result set page offset | [optional] |
| **limit** | **Integer** | Max number of items per page | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::Paging.new(
  total: 100,
  offset: 10,
  limit: 100
)
```

