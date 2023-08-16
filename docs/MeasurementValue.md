# Printful::MeasurementValue

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **size** | **String** | The size with which the value is associated |  |
| **value** | **String** | The single value associated with a size (whether this or &#x60;min_value&#x60; and &#x60;max_value&#x60; will be present) | [optional] |
| **min_value** | **String** | The lower boundary of the value range (whether this and &#x60;max_value&#x60; or &#x60;value&#x60; will be present) | [optional] |
| **max_value** | **String** | The upper boundary of the value range (whether this and &#x60;min_value&#x60; or &#x60;value&#x60; will be present) | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::MeasurementValue.new(
  size: S,
  value: 23.5,
  min_value: 20,
  max_value: 20
)
```

