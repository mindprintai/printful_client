# Printful::ChangePackingSlip200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **Integer** | Response status code &#x60;200&#x60; | [optional] |
| **result** | [**ChangePackingSlip200ResponseResult**](ChangePackingSlip200ResponseResult.md) |  | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::ChangePackingSlip200Response.new(
  code: 200,
  result: null
)
```

