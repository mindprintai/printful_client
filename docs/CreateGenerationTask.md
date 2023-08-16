# Printful::CreateGenerationTask

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **variant_ids** | **Array&lt;Integer&gt;** | List of variant ids you want to generate. | [optional] |
| **format** | **String** | Generated file format. PNG will have a transparent background, JPG will have a smaller file size. | [optional] |
| **width** | **Integer** | Width of the resulting mockup images (min 50, max 2000, default is 1000) | [optional] |
| **product_options** | **Hash&lt;String, Object&gt;** | Key-value list of product options (embroidery thread, stitch colors). Product options can be found in Catalog API endpoint. [See examples](#section/Options) | [optional] |
| **option_groups** | **Hash&lt;String&gt;** | List of option group names you want to generate. Product&#39;s option groups can be found in printfile API request. | [optional] |
| **options** | **Array&lt;String&gt;** | List of option names you want to generate. Product&#39;s options can be found in printfile API request. | [optional] |
| **files** | [**Array&lt;GenerationTaskFile&gt;**](GenerationTaskFile.md) |  | [optional] |
| **product_template_id** | **Integer** | Product template ID. Use instead of files parameter. | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::CreateGenerationTask.new(
  variant_ids: [4012,4013,4014,4017,4018,4019],
  format: jpg,
  width: null,
  product_options: null,
  option_groups: null,
  options: null,
  files: null,
  product_template_id: 123
)
```

