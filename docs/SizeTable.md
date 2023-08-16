# Printful::SizeTable

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Size table type |  |
| **unit** | **String** | The unit the size table values are in | [optional] |
| **description** | **String** | The size table description (HTML) | [optional] |
| **image_url** | **String** | The URL of an image showing the measurements | [optional] |
| **image_description** | **String** | The description of the measurement image (HTML) | [optional] |
| **measurements** | [**Array&lt;Measurement&gt;**](Measurement.md) | The size table measurements |  |

## Example

```ruby
require 'printful_client'

instance = Printful::SizeTable.new(
  type: null,
  unit: null,
  description: null,
  image_url: null,
  image_description: null,
  measurements: null
)
```

