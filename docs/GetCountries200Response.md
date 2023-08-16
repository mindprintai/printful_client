# Printful::GetCountries200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **Integer** | Response status code &#x60;200&#x60; | [optional] |
| **result** | [**Array&lt;Country&gt;**](Country.md) |  | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::GetCountries200Response.new(
  code: 200,
  result: null
)
```

