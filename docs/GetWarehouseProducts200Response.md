# Printful::GetWarehouseProducts200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **Integer** | Response status code &#x60;200&#x60; | [optional] |
| **result** | [**Array&lt;WarehouseProduct&gt;**](WarehouseProduct.md) | Array of WarehouseProducts | [optional] |
| **paging** | [**Paging**](Paging.md) |  | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::GetWarehouseProducts200Response.new(
  code: 200,
  result: null,
  paging: null
)
```

