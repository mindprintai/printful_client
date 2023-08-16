# Printful::RetailCosts

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **currency** | **String** | 3 letter currency code | [optional] |
| **subtotal** | **String** | Total cost of all items | [optional] |
| **discount** | **String** | Discount sum | [optional] |
| **shipping** | **String** | Shipping costs | [optional] |
| **tax** | **String** | Sum of taxes (not included in the item price) | [optional] |
| **vat** | **String** | Sum of VAT (not included in the item price) | [optional][readonly] |
| **total** | **String** | Grand Total (subtotal-discount+tax+vat+shipping) | [optional][readonly] |

## Example

```ruby
require 'printful_client'

instance = Printful::RetailCosts.new(
  currency: USD,
  subtotal: 10.00,
  discount: 0.00,
  shipping: 5.00,
  tax: 0.00,
  vat: 0.00,
  total: 15.00
)
```

