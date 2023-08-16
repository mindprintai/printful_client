# Printful::CalculateShippingRates

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **recipient** | [**AddressInfo**](AddressInfo.md) |  |  |
| **items** | [**Array&lt;ItemInfo&gt;**](ItemInfo.md) | Array of order items |  |
| **currency** | **String** | 3 letter currency code (optional), required if the rates need to be converted to another currency instead of store default currency | [optional] |
| **locale** | **String** | Locale in which shipping rate names will be returned. Available options: &#x60;en_US&#x60; (default), &#x60;es_ES&#x60; | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::CalculateShippingRates.new(
  recipient: null,
  items: null,
  currency: USD,
  locale: en_US
)
```

