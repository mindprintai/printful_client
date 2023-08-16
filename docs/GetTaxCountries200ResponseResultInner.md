# Printful::GetTaxCountries200ResponseResultInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | Country code | [optional] |
| **name** | **String** | Country name | [optional] |
| **states** | [**Array&lt;GetTaxCountries200ResponseResultInnerAllOfStatesInner&gt;**](GetTaxCountries200ResponseResultInnerAllOfStatesInner.md) |  | [optional] |
| **region** | **String** |  | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::GetTaxCountries200ResponseResultInner.new(
  code: Australia,
  name: AU,
  states: null,
  region: oceania
)
```

