# Printful::TemplateVariantMapping

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **variant_id** | **Integer** | Product variant ID. | [optional] |
| **templates** | [**Array&lt;TemplateVariantMappingItem&gt;**](TemplateVariantMappingItem.md) | Array of Template Variant Mapping items | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::TemplateVariantMapping.new(
  variant_id: 1,
  templates: null
)
```

