# Printful::Response200Paginated

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **Integer** | Response status code &#x60;200&#x60; | [optional] |
| **paging** | [**Paging**](Paging.md) |  | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::Response200Paginated.new(
  code: 200,
  paging: null
)
```

