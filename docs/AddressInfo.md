# Printful::AddressInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address1** | **String** | Address line 1 |  |
| **city** | **String** | City |  |
| **country_code** | **String** | Country code |  |
| **state_code** | **String** | State code (optional, required for United States, Australia and Canada) | [optional] |
| **zip** | **String** | ZIP or postal code (optional, required for some countries to calculate expedited shipping rates) | [optional] |
| **phone** | **String** | Phone number (optional) | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::AddressInfo.new(
  address1: 19749 Dearborn St,
  city: Chatsworth,
  country_code: US,
  state_code: CA,
  zip: 91311,
  phone: null
)
```

