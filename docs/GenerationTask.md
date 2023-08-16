# Printful::GenerationTask

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **task_key** | **String** | Task identifier you will use to retrieve generated mockups. | [optional] |
| **status** | **String** | Status of the generation task. | [optional] |
| **error** | **String** | If task has failed, reason will be provided here. | [optional] |
| **mockups** | [**Array&lt;GenerationTaskMockup&gt;**](GenerationTaskMockup.md) | If task is completed, list of mockups will be provided here. | [optional] |
| **printfiles** | [**Array&lt;GenerationTaskTemplateFile&gt;**](GenerationTaskTemplateFile.md) | If task is completed, list of printfiles will be provided here. | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::GenerationTask.new(
  task_key: 123456,
  status: completed,
  error: null,
  mockups: null,
  printfiles: null
)
```

