# Printful::TemplatePlacementConflict

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **placement** | **String** | Placement ID | [optional] |
| **conflicts** | **Array&lt;String&gt;** | List Placement IDs that are conflicting with given placement | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::TemplatePlacementConflict.new(
  placement: label_outside,
  conflicts: [&quot;back&quot;,&quot;label_inside&quot;]
)
```

