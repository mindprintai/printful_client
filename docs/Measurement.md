# Printful::Measurement

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type_label** | **String** | Measurement type | [optional] |
| **unit** | **String** | The measurement unit if it&#39;s not defined on the size table level or is different | [optional] |
| **values** | [**Array&lt;MeasurementValue&gt;**](MeasurementValue.md) | The measurement values for each size |  |

## Example

```ruby
require 'printful_client'

instance = Printful::Measurement.new(
  type_label: Length,
  unit: none,
  values: null
)
```

