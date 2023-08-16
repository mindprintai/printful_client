# Printful::OrderEstimateRetailCosts

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **currency** | **String** | 3 letter currency code | [optional] |
| **subtotal** | **Float** | Total cost of all items | [optional] |
| **discount** | **Float** | Discount sum | [optional] |
| **shipping** | **Float** | Shipping costs | [optional] |
| **tax** | **Float** | Sum of taxes (not included in the item price) | [optional] |
| **vat** | **Float** | Sum of VAT (not included in the item price) | [optional][readonly] |
| **total** | **Float** | Grand Total (subtotal-discount+tax+vat+shipping) | [optional][readonly] |

## Example

```ruby
require 'printful_client'

instance = Printful::OrderEstimateRetailCosts.new(
  currency: USD,
  subtotal: 10,
  discount: 0,
  shipping: 5,
  tax: 0,
  vat: 0,
  total: 15
)
```

