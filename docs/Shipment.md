# Printful::Shipment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Shipment ID | [optional] |
| **carrier** | **String** | Carrier name | [optional] |
| **service** | **String** | Delivery service name | [optional] |
| **tracking_number** | **String** | Shipment tracking number | [optional] |
| **tracking_url** | **String** | Shipment tracking URL | [optional] |
| **created** | **Integer** | Shipping time | [optional] |
| **ship_date** | **String** | Ship date | [optional] |
| **shipped_at** | **String** | Ship time in unix timestamp | [optional] |
| **reshipment** | **Boolean** | Whether this is a reshipment | [optional] |
| **items** | [**Array&lt;OrderShipmentItem&gt;**](OrderShipmentItem.md) | Array of items in this shipment | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::Shipment.new(
  id: 10,
  carrier: FEDEX,
  service: FedEx SmartPost,
  tracking_number: 0,
  tracking_url: https://www.fedex.com/fedextrack/?tracknumbers&#x3D;0000000000,
  created: 1588716060,
  ship_date: 2020-05-05,
  shipped_at: 1588716060,
  reshipment: false,
  items: null
)
```

