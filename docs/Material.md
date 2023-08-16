# Printful::Material

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Material name | [optional] |
| **percentage** | **Float** | Percentage of the material in the product | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::Material.new(
  name: cotton,
  percentage: 100
)
```

