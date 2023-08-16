# Printful::Country

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | Country code | [optional] |
| **name** | **String** | Country name | [optional] |
| **states** | [**Array&lt;State&gt;**](State.md) |  | [optional] |
| **region** | **String** |  | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::Country.new(
  code: Australia,
  name: AU,
  states: null,
  region: oceania
)
```

