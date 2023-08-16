# Printful::GenerationTaskFile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **placement** | **String** | Placement identifier (front, back, etc.). | [optional] |
| **image_url** | **String** | Public URL where your file is stored. | [optional] |
| **position** | [**GenerationTaskFilePosition**](GenerationTaskFilePosition.md) |  | [optional] |
| **options** | [**Array&lt;FileOption&gt;**](FileOption.md) | Array of additional options for this file [See examples](#section/Options) | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::GenerationTaskFile.new(
  placement: front,
  image_url: http://your-site/path-to-front-printfile.jpg,
  position: null,
  options: null
)
```

