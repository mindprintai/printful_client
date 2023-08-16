# Printful::TemplateById

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** |  | [optional] |
| **product_id** | **Integer** |  | [optional] |
| **external_product_id** | **String** |  | [optional] |
| **title** | **String** |  | [optional] |
| **available_variant_ids** | **Array&lt;Integer&gt;** |  | [optional] |
| **option_data** | [**Array&lt;TemplateByIdOptionDataInner&gt;**](TemplateByIdOptionDataInner.md) |  | [optional] |
| **colors** | [**Array&lt;TemplateByIdColorsInner&gt;**](TemplateByIdColorsInner.md) |  | [optional] |
| **sizes** | **Array&lt;String&gt;** |  | [optional] |
| **mockup_file_url** | **String** |  | [optional] |
| **placements** | [**Array&lt;TemplateByIdPlacementsInner&gt;**](TemplateByIdPlacementsInner.md) |  | [optional] |
| **created_at** | **Integer** |  | [optional] |
| **updated_at** | **Integer** |  | [optional] |
| **placement_option_data** | [**Array&lt;TemplateByIdPlacementOptionDataInner&gt;**](TemplateByIdPlacementOptionDataInner.md) |  | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::TemplateById.new(
  id: null,
  product_id: null,
  external_product_id: null,
  title: null,
  available_variant_ids: null,
  option_data: null,
  colors: null,
  sizes: null,
  mockup_file_url: null,
  placements: null,
  created_at: null,
  updated_at: null,
  placement_option_data: null
)
```

