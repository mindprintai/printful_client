# Printful::TotalPaidOrders

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | **Float** | Number of unique orders for period | [optional] |
| **relative_difference** | **Float** | Relative difference from the value from the previous period. -1 means 100% decrease, 1 means 100% increase. 0 is returned if there is no change or the previous value was 0. | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::TotalPaidOrders.new(
  value: null,
  relative_difference: null
)
```

