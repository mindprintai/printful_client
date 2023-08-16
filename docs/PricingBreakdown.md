# Printful::PricingBreakdown

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_pays** | **String** | Amount customer paid | [optional] |
| **printful_price** | **String** | Printful price | [optional] |
| **profit** | **String** | Profit | [optional] |
| **currency_symbol** | **String** | Shipment tracking number | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::PricingBreakdown.new(
  customer_pays: 3.75,
  printful_price: 6,
  profit: -2.25,
  currency_symbol: USD
)
```

