# Printful::VariantPrintfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **variant_id** | **Integer** |  | [optional] |
| **placements** | **Object** | A key-value object mapping placement identifiers to printfile IDs. | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::VariantPrintfile.new(
  variant_id: 4012,
  placements: {&quot;front&quot;:1,&quot;back&quot;:1,&quot;label_outside&quot;:1}
)
```

