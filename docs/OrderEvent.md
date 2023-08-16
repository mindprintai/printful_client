# Printful::OrderEvent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Object** |  | [optional] |
| **external_id** | **Object** |  | [optional] |
| **store** | **Object** |  | [optional] |
| **status** | **Object** |  | [optional] |
| **shipping** | **Object** |  | [optional] |
| **shipping_service_name** | **Object** |  | [optional] |
| **created** | **Object** |  | [optional] |
| **updated** | **Object** |  | [optional] |
| **recipient** | **Object** |  |  |
| **items** | **Object** |  |  |
| **branding_items** | **Object** |  | [optional] |
| **incomplete_items** | **Object** |  | [optional] |
| **costs** | **Object** |  | [optional] |
| **retail_costs** | **Object** |  | [optional] |
| **pricing_breakdown** | **Object** |  | [optional] |
| **shipments** | **Object** |  | [optional] |
| **gift** | **Object** |  | [optional] |
| **packing_slip** | **Object** |  | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::OrderEvent.new(
  id: null,
  external_id: null,
  store: null,
  status: null,
  shipping: null,
  shipping_service_name: null,
  created: null,
  updated: null,
  recipient: null,
  items: null,
  branding_items: null,
  incomplete_items: null,
  costs: null,
  retail_costs: null,
  pricing_breakdown: null,
  shipments: null,
  gift: null,
  packing_slip: null
)
```

