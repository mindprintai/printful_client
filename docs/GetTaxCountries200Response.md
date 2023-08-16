# Printful::GetTaxCountries200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **Integer** | Response status code &#x60;200&#x60; | [optional] |
| **result** | [**Array&lt;GetTaxCountries200ResponseResultInner&gt;**](GetTaxCountries200ResponseResultInner.md) |  | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::GetTaxCountries200Response.new(
  code: 200,
  result: null
)
```

