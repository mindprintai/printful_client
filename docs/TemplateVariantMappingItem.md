# Printful::TemplateVariantMappingItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **placement** | **String** | Placement ID. | [optional] |
| **template_id** | **Integer** | Corresponding template id which should be used for this variant and placement combination. | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::TemplateVariantMappingItem.new(
  placement: front,
  template_id: 1
)
```

