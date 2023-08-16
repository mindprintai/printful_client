# Printful::PackingSlip

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | Customer service email | [optional] |
| **phone** | **String** | Customer service phone | [optional] |
| **message** | **String** | Custom packing slip message | [optional] |
| **logo_url** | **String** | URL address to a sticker we will put on a package | [optional] |
| **store_name** | **String** | Store name override for the return address | [optional] |
| **custom_order_id** | **String** | Your own Order ID that will be printed instead of Printful&#39;s Order ID | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::PackingSlip.new(
  email: your-name@your-domain.com,
  phone: +371 28888888,
  message: Message on packing slip,
  logo_url: *http://www.your-domain.com/packing-logo.png,
  store_name: Your store name,
  custom_order_id: kkk2344lm
)
```

