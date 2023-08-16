# Printful::Order

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Order ID | [optional][readonly] |
| **external_id** | **String** | Order ID from the external system | [optional] |
| **store** | **Integer** | Store ID | [optional][readonly] |
| **status** | **String** |  Order status:&lt;br /&gt; **draft** - order is not submitted for fulfillment&lt;br /&gt; **failed** - order was submitted for fulfillment but was not accepted because of an error (problem with address, printfiles, charging, etc.)&lt;br /&gt; **pending** - order has been submitted for fulfillment&lt;br /&gt; **canceled** - order is canceled&lt;br /&gt; **onhold** - order has encountered a problem during the fulfillment that needs to be resolved together with the Printful customer service **inprocess** - order is being fulfilled and is no longer cancellable&lt;br /&gt; **partial** - order is partially fulfilled (some items are shipped already, the rest will follow)&lt;br /&gt; **fulfilled** - all items are shipped&lt;br /&gt;  | [optional][readonly] |
| **shipping** | **String** | Shipping method. Defaults to &#39;STANDARD&#39; | [optional] |
| **shipping_service_name** | **String** | Human readable shipping method name. | [optional][readonly] |
| **created** | **Integer** | Time when the order was created | [optional][readonly] |
| **updated** | **Integer** | Time when the order was updated | [optional][readonly] |
| **recipient** | [**Address**](Address.md) |  |  |
| **items** | [**Array&lt;Item&gt;**](Item.md) | Array of items in the order |  |
| **branding_items** | [**Array&lt;Item&gt;**](Item.md) | Array of branding items in the order | [optional][readonly] |
| **incomplete_items** | [**Array&lt;IncompleteItem&gt;**](IncompleteItem.md) | Array of incomplete items in the order | [optional][readonly] |
| **costs** | [**OrderCosts**](OrderCosts.md) |  | [optional] |
| **retail_costs** | [**RetailCosts**](RetailCosts.md) |  | [optional] |
| **pricing_breakdown** | [**Array&lt;PricingBreakdown&gt;**](PricingBreakdown.md) | Difference between order price and retail costs. Will be shown only if order is completed. | [optional][readonly] |
| **shipments** | [**Array&lt;Shipment&gt;**](Shipment.md) | Array of shipments already shipped for this order | [optional][readonly] |
| **gift** | [**Gift**](Gift.md) |  | [optional] |
| **packing_slip** | [**PackingSlip**](PackingSlip.md) |  | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::Order.new(
  id: 13,
  external_id: 4235234213,
  store: 10,
  status: draft,
  shipping: STANDARD,
  shipping_service_name: Flat Rate (3-4 business days after fulfillment),
  created: 1602607640,
  updated: 1602607640,
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

