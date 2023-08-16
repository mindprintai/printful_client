# Printful::TaxInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **required** | **Boolean** | Whether sales tax is required for the given address | [optional] |
| **rate** | **Float** | Tax rate | [optional] |
| **shipping_taxable** | **Boolean** | Whether shipping is taxable | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::TaxInfo.new(
  required: true,
  rate: 0.095,
  shipping_taxable: false
)
```

