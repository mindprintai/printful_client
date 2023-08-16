# Printful::OrderEstimateCosts

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **currency** | **String** | 3 letter currency code | [optional] |
| **subtotal** | **Float** | Total cost of all items | [optional] |
| **discount** | **Float** | Discount sum | [optional] |
| **shipping** | **Float** | Shipping costs | [optional] |
| **digitization** | **String** | Digitization costs | [optional] |
| **additional_fee** | **Float** | Additional fee for custom product | [optional] |
| **fulfillment_fee** | **Float** | Custom product fulfillment fee | [optional] |
| **tax** | **Float** | Sum of taxes (not included in the item price) | [optional] |
| **vat** | **Float** | Sum of vat (not included in the item price) | [optional] |
| **total** | **Float** | Grand Total (subtotal-discount+tax+vat+shipping) | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::OrderEstimateCosts.new(
  currency: USD,
  subtotal: 10,
  discount: 0,
  shipping: 5,
  digitization: 0,
  additional_fee: 0,
  fulfillment_fee: 0,
  tax: 0,
  vat: 0,
  total: 15
)
```

