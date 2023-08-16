# Printful::AvailabilityStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **region** | **String** | Region code | [optional] |
| **status** | **String** | Stock status. Possible values include: &#39;in_stock&#39; - available for fulfillment, &#39;stocked_on_demand&#39; - available for fulfillment, &#39;discontinued&#39; - permanently unavailable, &#39;out_of_stock&#39; - temporarily unavailable | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::AvailabilityStatus.new(
  region: US,
  status: in_stock
)
```

