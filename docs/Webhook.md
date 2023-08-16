# Printful::Webhook

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Event type | [optional] |
| **created** | **Integer** | Event time | [optional] |
| **retries** | **Integer** | Number of previous attempts to deliver this webhook event | [optional] |
| **store** | **Integer** | ID of the store that the event occured to | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::Webhook.new(
  type: null,
  created: 1622456737,
  retries: 2,
  store: 12
)
```

