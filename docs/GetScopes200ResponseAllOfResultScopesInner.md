# Printful::GetScopes200ResponseAllOfResultScopesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **scope** | **String** |  | [optional] |
| **display_name** | **String** |  | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::GetScopes200ResponseAllOfResultScopesInner.new(
  scope: orders/read,
  display_name: View all orders
)
```

