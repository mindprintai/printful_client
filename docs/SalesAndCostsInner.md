# Printful::SalesAndCostsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date** | **String** | The date of the value: day in &#x60;Y-m-d&#x60; format, month in &#x60;Y-m&#x60; format or \&quot;Total\&quot; for the first element of the list which shows the total values for the whole requested period | [optional] |
| **sales** | **Float** | Order retail price data. Available only if retail price fields are properly set up on the integration&#39;s side | [optional] |
| **fulfillment** | **Float** | Product fulfillment, digitization, branding, shipping costs and taxes that are charged by Printful | [optional] |
| **profit** | **Float** | The difference between Sales and Fulfillment. If retail price data is not available, profit might be negative | [optional] |
| **sales_discount** | **Float** | Any retail price discounts set up on the integration&#39;s side | [optional] |
| **fulfillment_discount** | **Float** | Any fulfillment discounts (such as the monthly discount) set up on Printful&#39;s side | [optional] |
| **sales_shipping** | **Float** | The retail shipping price that was paid by the buyer | [optional] |
| **fulfillment_shipping** | **Float** | Shipping costs that were charged by Printful | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::SalesAndCostsInner.new(
  date: null,
  sales: null,
  fulfillment: null,
  profit: null,
  sales_discount: null,
  fulfillment_discount: null,
  sales_shipping: null,
  fulfillment_shipping: null
)
```

