# Printful::TaxAddressInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country_code** | **String** | Country code |  |
| **state_code** | **String** | State code |  |
| **city** | **String** | City |  |
| **zip** | **String** | ZIP or postal code |  |

## Example

```ruby
require 'printful_client'

instance = Printful::TaxAddressInfo.new(
  country_code: US,
  state_code: CA,
  city: Chatsworth,
  zip: 91311
)
```

