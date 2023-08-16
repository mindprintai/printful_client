# Printful::StoreStatistics

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **store_id** | **Integer** | The ID of the store for which the statistics are returned | [optional] |
| **currency** | **String** | The code of the currency in which the statistics are returned | [optional] |
| **sales_and_costs** | [**Array&lt;SalesAndCostsInner&gt;**](SalesAndCostsInner.md) | Sales and costs report | [optional] |
| **sales_and_costs_summary** | [**Array&lt;SalesAndCostsSummaryInner&gt;**](SalesAndCostsSummaryInner.md) | Sales and costs summary report | [optional] |
| **printful_costs** | [**PrintfulCosts**](PrintfulCosts.md) |  | [optional] |
| **profit** | [**Profit**](Profit.md) |  | [optional] |
| **total_paid_orders** | [**TotalPaidOrders**](TotalPaidOrders.md) |  | [optional] |
| **costs_by_amount** | [**Array&lt;CostsByAmountInner&gt;**](CostsByAmountInner.md) | Costs by amount report | [optional] |
| **costs_by_product** | [**Array&lt;CostsByProductInner&gt;**](CostsByProductInner.md) | Costs by product report | [optional] |
| **costs_by_variant** | [**Array&lt;CostsByVariantInner&gt;**](CostsByVariantInner.md) | Costs by variant report | [optional] |
| **average_fulfillment_time** | [**AverageFulfillmentTime**](AverageFulfillmentTime.md) |  | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::StoreStatistics.new(
  store_id: null,
  currency: USD,
  sales_and_costs: null,
  sales_and_costs_summary: null,
  printful_costs: null,
  profit: null,
  total_paid_orders: null,
  costs_by_amount: null,
  costs_by_product: null,
  costs_by_variant: null,
  average_fulfillment_time: null
)
```

