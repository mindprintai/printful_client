# Printful::GenerationTaskTemplateFile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **variant_ids** | **Array&lt;Integer&gt;** | List of variant IDs associated with printfiles. | [optional] |
| **placement** | **String** | Placement identifier (front, back, etc.). | [optional] |
| **url** | **String** | Public URL where your file is stored. | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::GenerationTaskTemplateFile.new(
  variant_ids: [4012,4013,4014,4017,4018,4019],
  placement: front,
  url: https://url-to/printfile.png
)
```

