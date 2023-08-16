# Printful::GetStores200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **Integer** | Response status code &#x60;200&#x60; | [optional] |
| **paging** | [**Paging**](Paging.md) |  | [optional] |
| **result** | [**Array&lt;Store&gt;**](Store.md) |  | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::GetStores200Response.new(
  code: 200,
  paging: null,
  result: null
)
```

