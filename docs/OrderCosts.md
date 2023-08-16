# Printful::OrderCosts

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **currency** | **String** | 3 letter currency code | [optional] |
| **subtotal** | **String** | Total cost of all items | [optional] |
| **discount** | **String** | Discount sum | [optional] |
| **shipping** | **String** | Shipping costs | [optional] |
| **digitization** | **String** | Digitization costs | [optional] |
| **additional_fee** | **String** | Additional fee for custom product | [optional] |
| **fulfillment_fee** | **String** | Custom product fulfillment fee | [optional] |
| **retail_delivery_fee** | **String** | Retail delivery fee | [optional] |
| **tax** | **String** | Sum of taxes (not included in the item price) | [optional] |
| **vat** | **String** | Sum of vat (not included in the item price) | [optional] |
| **total** | **String** | Grand Total (subtotal-discount+tax+vat+shipping) | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::OrderCosts.new(
  currency: USD,
  subtotal: 10.00,
  discount: 0.00,
  shipping: 5.00,
  digitization: 0.00,
  additional_fee: 0.00,
  fulfillment_fee: 0.00,
  retail_delivery_fee: 0.00,
  tax: 0.00,
  vat: 0.00,
  total: 15.00
)
```

