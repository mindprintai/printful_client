# Printful::PrintfileInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **Integer** | Requested product id. | [optional] |
| **available_placements** | **Object** | List of available placements. Key is placement identifier, value is display name. (e.g. {embroidery_front: Front, ..}). | [optional] |
| **printfiles** | [**Array&lt;Printfile&gt;**](Printfile.md) |  | [optional] |
| **variant_printfiles** | [**Array&lt;VariantPrintfile&gt;**](VariantPrintfile.md) |  | [optional] |
| **option_groups** | **Array&lt;String&gt;** |  | [optional] |
| **options** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::PrintfileInfo.new(
  product_id: 71,
  available_placements: {&quot;front&quot;:&quot;Front print&quot;,&quot;back&quot;:&quot;Back print&quot;,&quot;label_outside&quot;:&quot;Outside label&quot;},
  printfiles: null,
  variant_printfiles: null,
  option_groups: null,
  options: null
)
```

