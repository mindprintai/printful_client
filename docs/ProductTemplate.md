# Printful::ProductTemplate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **Integer** | Resource version. If this changes, resources (positions, images, etc.) should be re-cached. | [optional] |
| **min_dpi** | **Integer** | Recommended minimum DPI for given product. | [optional] |
| **variant_mapping** | [**Array&lt;TemplateVariantMapping&gt;**](TemplateVariantMapping.md) | List of product variants mapped to templates. From this information you can determine which template should be used for a variant. | [optional] |
| **templates** | [**Array&lt;Template&gt;**](Template.md) | List of templates. Use variant_mapping to determine which template corresponds to which product variant. | [optional] |
| **conflicting_placements** | [**Array&lt;TemplatePlacementConflict&gt;**](TemplatePlacementConflict.md) | List of conflicting placements. Used to determine which placements can be used together. | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::ProductTemplate.new(
  version: 1,
  min_dpi: 300,
  variant_mapping: null,
  templates: null,
  conflicting_placements: null
)
```

