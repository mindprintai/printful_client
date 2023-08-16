# Printful::CostsByAmountInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date** | **String** | The date of the value: day in &#x60;Y-m-d&#x60; format, month in &#x60;Y-m&#x60; format or \&quot;Total\&quot; for the first element of the list which shows the total values for the whole requested period | [optional] |
| **product_amount** | **Float** | Product &amp; fulfillment costs | [optional] |
| **digitization** | **Float** | Embroidery digitization costs | [optional] |
| **branding** | **Float** | Pack-in costs | [optional] |
| **vat** | **Float** | Tax amounts. If not applicable, it will be 0. | [optional] |
| **sales_tax** | **Float** | Tax amounts. If not applicable, it will be 0. | [optional] |
| **shipping** | **Float** | Shipping costs that were charged by Printful | [optional] |
| **discount** | **Float** | Any fulfillment discounts (such as the monthly discount) set up on Printful&#39;s side | [optional] |
| **total** | **Float** | Summary of all costs | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::CostsByAmountInner.new(
  date: null,
  product_amount: null,
  digitization: null,
  branding: null,
  vat: null,
  sales_tax: null,
  shipping: null,
  discount: null,
  total: null
)
```

