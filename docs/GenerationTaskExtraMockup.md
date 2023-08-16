# Printful::GenerationTaskExtraMockup

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | Display name of the extra mockup. | [optional] |
| **url** | **String** | Temporary URL of the mockup. | [optional] |
| **option** | **String** | Style option name | [optional] |
| **option_group** | **String** | Style option group name | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::GenerationTaskExtraMockup.new(
  title: null,
  url: https://url-to/extra-mockup.png,
  option: null,
  option_group: null
)
```

