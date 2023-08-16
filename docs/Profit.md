# Printful::Profit

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | **Float** | The difference between Sales and Fulfillment. If retail price data is not available, profit might be negative | [optional] |
| **relative_difference** | **Float** | Relative difference from the value from the previous period. -1 means 100% decrease, 1 means 100% increase. 0 is returned if there is no change or the previous value was 0. | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::Profit.new(
  value: null,
  relative_difference: null
)
```

