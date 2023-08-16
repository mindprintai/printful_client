# Printful::PrintfulCosts

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | **Float** | Amount paid to Printful for fulfillment and shipping. | [optional] |
| **relative_difference** | **Float** | Relative difference from the value from the previous period. -1 means 100% decrease, 1 means 100% increase. 0 is returned if there is no change or the previous value was 0. | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::PrintfulCosts.new(
  value: null,
  relative_difference: null
)
```

