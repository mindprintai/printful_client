# Printful::WebhookInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | Webhook URL that will receive store&#39;s event notifications | [optional] |
| **types** | **Array&lt;String&gt;** | Array of enabled webhook event types | [optional] |
| **params** | **Hash&lt;String, Object&gt;** |  | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::WebhookInfo.new(
  url: *https://www.example.com/printful/webhook,
  types: [&quot;package_shipped&quot;,&quot;stock_updated&quot;],
  params: {&quot;stock_updated&quot;:{&quot;product_ids&quot;:[5,12]}}
)
```

