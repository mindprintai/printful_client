# Printful::ApprovalSheetWebhookFile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **confirm_hash** | **String** |  | [optional] |
| **submitted_design** | **String** |  | [optional] |
| **recommended_design** | **String** |  | [optional] |
| **approval_sheet** | **String** |  | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::ApprovalSheetWebhookFile.new(
  confirm_hash: a14e51714be01f98487fcf5131727d31,
  submitted_design: https://s3.staging.printful.com/upload/approval-design/ae/ae7b3d3e965c238b3e5c1a4e15696f07_l,
  recommended_design: https://s3.staging.printful.com/upload/approval-design/aa/aaf9e1c6b32cb7a2c04d2746108d4124_l,
  approval_sheet: https://www.printful.test/dashboard/order/download-approval-sheet-pdf?confirmationHash&#x3D;13aa35854bfc67a85b7ce231aef2ae8
)
```

