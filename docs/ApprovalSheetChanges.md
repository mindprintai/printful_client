# Printful::ApprovalSheetChanges

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message** | **String** | A message to send to Printful designers. Customers should use this to describe the changes they want. |  |
| **files** | [**Array&lt;ApprovalSheetChangesFilesInner&gt;**](ApprovalSheetChangesFilesInner.md) | An array of images to help describe the requested changes. Consider using the mockup generator to generate these images. The array is required but can be empty if you do not want to email any images. |  |

## Example

```ruby
require 'printful_client'

instance = Printful::ApprovalSheetChanges.new(
  message: The design needs to be aligned to the left,
  files: null
)
```

