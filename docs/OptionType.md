# Printful::OptionType

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Option identifier - use this to specify the option when creating an order | [optional] |
| **title** | **String** | Display name | [optional] |
| **type** | **String** | Data type of this option (currently only &#39;bool&#39; is supported) | [optional] |
| **values** | **Hash&lt;String, Object&gt;** | Possible option values - [key, value] map | [optional] |
| **additional_price** | **String** | Additional price when this option is used | [optional] |
| **additional_price_breakdown** | **Hash&lt;String, Object&gt;** | Additional price breakdown by type - [key, value] map | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::OptionType.new(
  id: embroidery_type,
  title: Embroidery type,
  type: radio,
  values: {&quot;flat&quot;:&quot;Flat Embroidery&quot;,&quot;3d&quot;:&quot;3D Puff&quot;,&quot;both&quot;:&quot;Partial 3D Puff&quot;},
  additional_price: null,
  additional_price_breakdown: {&quot;flat&quot;:&quot;0.00&quot;,&quot;3d&quot;:&quot;0.00&quot;,&quot;both&quot;:&quot;0.00&quot;}
)
```

