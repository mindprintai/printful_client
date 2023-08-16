# Printful::SalesAndCostsSummaryInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date** | **String** | The date of the value: day in &#x60;Y-m-d&#x60; format, month in &#x60;Y-m&#x60; format or \&quot;Total\&quot; for the first element of the list which shows the total values for the whole requested period | [optional] |
| **order_count** | **Float** | The order count in the aggregation period | [optional] |
| **costs** | **Float** | Product fulfillment, digitization, branding, shipping costs and taxes that are charged by Printful | [optional] |
| **profit** | **Float** | The difference between Sales and Fulfillment. If retail price data is not available, profit might be negative | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::SalesAndCostsSummaryInner.new(
  date: null,
  order_count: null,
  costs: null,
  profit: null
)
```

