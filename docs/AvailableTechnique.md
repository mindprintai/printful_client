# Printful::AvailableTechnique

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | The technique key to be used in the API | [optional] |
| **display_name** | **String** | The human-readable technique name | [optional] |
| **is_default** | **Boolean** | Whether the technique is the default one | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::AvailableTechnique.new(
  key: DTG,
  display_name: DTG printing,
  is_default: null
)
```

