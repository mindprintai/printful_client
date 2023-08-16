# Printful::ShippingInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Shipping method ID | [optional] |
| **name** | **String** | Shipping method name | [optional] |
| **rate** | **String** | Shipping rate | [optional] |
| **currency** | **String** | Currency code in which the rate is returned | [optional] |
| **min_delivery_days** | **Integer** | Estimated minimum delivery days. &lt;span style&#x3D;\&quot;color:orange\&quot;&gt;Warning! This value may not be present in response.&lt;/span&gt; | [optional] |
| **max_delivery_days** | **Integer** | Estimated maximum delivery days. &lt;span style&#x3D;\&quot;color:orange\&quot;&gt;Warning! This value may not be present in response.&lt;/span&gt; | [optional] |
| **min_delivery_date** | **Integer** | Estimated minimum delivery date. &lt;span style&#x3D;\&quot;color:orange\&quot;&gt;Warning! This value may not be present in response.&lt;/span&gt; | [optional] |
| **max_delivery_date** | **Integer** | Estimated maximum delivery date. &lt;span style&#x3D;\&quot;color:orange\&quot;&gt;Warning! This value may not be present in response.&lt;/span&gt; | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::ShippingInfo.new(
  id: STANDARD,
  name: Flat Rate (Estimated delivery: May 19–24) ,
  rate: 13.60,
  currency: EUR,
  min_delivery_days: 4,
  max_delivery_days: 7,
  min_delivery_date: null,
  max_delivery_date: null
)
```

