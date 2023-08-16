# Printful::Statistics

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **store_statistics** | [**Array&lt;StoreStatistics&gt;**](StoreStatistics.md) | The statistics for each store (currently only a single store is supported). | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::Statistics.new(
  store_statistics: null
)
```

