# Printful::Gift

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subject** | **String** | Gift message title | [optional] |
| **message** | **String** | Gift message text | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::Gift.new(
  subject: To John,
  message: Have a nice day
)
```

