# Printful::GenerationTaskMockup

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **placement** | **String** | Placement identifier. | [optional] |
| **variant_ids** | **Array&lt;Integer&gt;** | List of variant ids this mockup is used for. One mockup can be used for multiple variants. | [optional] |
| **mockup_url** | **String** | Temporary URL of the primary mockup. | [optional] |
| **extra** | [**Array&lt;GenerationTaskExtraMockup&gt;**](GenerationTaskExtraMockup.md) | Optional extra mockups. | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::GenerationTaskMockup.new(
  placement: front,
  variant_ids: [4011,4012,4013],
  mockup_url: https://url-to/front-mockup.png,
  extra: null
)
```

