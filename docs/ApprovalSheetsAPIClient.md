# Printful::ApprovalSheetsAPIClient

All URIs are relative to *https://api.printful.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**approve_design**](ApprovalSheetsAPIClient.md#approve_design) | **POST** /approval-sheets | Approve a design |
| [**get_approval_sheets**](ApprovalSheetsAPIClient.md#get_approval_sheets) | **GET** /approval-sheets | Retrieve a list of approval sheets |
| [**submit_approval_sheet_changes**](ApprovalSheetsAPIClient.md#submit_approval_sheet_changes) | **POST** /approval-sheets/changes | Submit changes to an approval sheet |


## approve_design

> <ApproveDesign200Response> approve_design(confirm_hash, approval_sheet, opts)

Approve a design

Uses the confirm hash of an approval sheet to approve a design and remove the hold on an order

### Examples

```ruby
require 'time'
require 'printful_client'

api_instance = Printful::ApprovalSheetsAPIClient.new
confirm_hash = 'a14e51714be01f98487fcf5131727d31' # String | The confirm hash for the approval sheet you would like to approve.
approval_sheet = Printful::ApprovalSheet.new({status: 'approved'}) # ApprovalSheet | POST request body
opts = {
  x_pf_store_id: 'x_pf_store_id_example' # String | Use this to specify which store you want to use (required only for account level token)
}

begin
  # Approve a design
  result = api_instance.approve_design(confirm_hash, approval_sheet, opts)
  p result
rescue Printful::ApiError => e
  puts "Error when calling ApprovalSheetsAPIClient->approve_design: #{e}"
end
```

#### Using the approve_design_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApproveDesign200Response>, Integer, Hash)> approve_design_with_http_info(confirm_hash, approval_sheet, opts)

```ruby
begin
  # Approve a design
  data, status_code, headers = api_instance.approve_design_with_http_info(confirm_hash, approval_sheet, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApproveDesign200Response>
rescue Printful::ApiError => e
  puts "Error when calling ApprovalSheetsAPIClient->approve_design_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **confirm_hash** | **String** | The confirm hash for the approval sheet you would like to approve. |  |
| **approval_sheet** | [**ApprovalSheet**](ApprovalSheet.md) | POST request body |  |
| **x_pf_store_id** | **String** | Use this to specify which store you want to use (required only for account level token) | [optional] |

### Return type

[**ApproveDesign200Response**](ApproveDesign200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_approval_sheets

> <GetApprovalSheets200Response> get_approval_sheets(opts)

Retrieve a list of approval sheets

Retrieve a list of approval sheets confirming suggested changes to files of on hold orders.

### Examples

```ruby
require 'time'
require 'printful_client'

api_instance = Printful::ApprovalSheetsAPIClient.new
opts = {
  x_pf_store_id: 'x_pf_store_id_example' # String | Use this to specify which store you want to use (required only for account level token)
}

begin
  # Retrieve a list of approval sheets
  result = api_instance.get_approval_sheets(opts)
  p result
rescue Printful::ApiError => e
  puts "Error when calling ApprovalSheetsAPIClient->get_approval_sheets: #{e}"
end
```

#### Using the get_approval_sheets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetApprovalSheets200Response>, Integer, Hash)> get_approval_sheets_with_http_info(opts)

```ruby
begin
  # Retrieve a list of approval sheets
  data, status_code, headers = api_instance.get_approval_sheets_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetApprovalSheets200Response>
rescue Printful::ApiError => e
  puts "Error when calling ApprovalSheetsAPIClient->get_approval_sheets_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_pf_store_id** | **String** | Use this to specify which store you want to use (required only for account level token) | [optional] |

### Return type

[**GetApprovalSheets200Response**](GetApprovalSheets200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## submit_approval_sheet_changes

> <SubmitApprovalSheetChanges200Response> submit_approval_sheet_changes(confirm_hash, approval_sheet_changes, opts)

Submit changes to an approval sheet

Use this to submit alternative changes to a design that has an approval sheet

### Examples

```ruby
require 'time'
require 'printful_client'

api_instance = Printful::ApprovalSheetsAPIClient.new
confirm_hash = 'a14e51714be01f98487fcf5131727d31' # String | The confirm hash for the approval sheet you would like to approve.
approval_sheet_changes = Printful::ApprovalSheetChanges.new({message: 'The design needs to be aligned to the left', files: [Printful::ApprovalSheetChangesFilesInner.new({url: 'example.com'})]}) # ApprovalSheetChanges | POST request body
opts = {
  x_pf_store_id: 'x_pf_store_id_example' # String | Use this to specify which store you want to use (required only for account level token)
}

begin
  # Submit changes to an approval sheet
  result = api_instance.submit_approval_sheet_changes(confirm_hash, approval_sheet_changes, opts)
  p result
rescue Printful::ApiError => e
  puts "Error when calling ApprovalSheetsAPIClient->submit_approval_sheet_changes: #{e}"
end
```

#### Using the submit_approval_sheet_changes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubmitApprovalSheetChanges200Response>, Integer, Hash)> submit_approval_sheet_changes_with_http_info(confirm_hash, approval_sheet_changes, opts)

```ruby
begin
  # Submit changes to an approval sheet
  data, status_code, headers = api_instance.submit_approval_sheet_changes_with_http_info(confirm_hash, approval_sheet_changes, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubmitApprovalSheetChanges200Response>
rescue Printful::ApiError => e
  puts "Error when calling ApprovalSheetsAPIClient->submit_approval_sheet_changes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **confirm_hash** | **String** | The confirm hash for the approval sheet you would like to approve. |  |
| **approval_sheet_changes** | [**ApprovalSheetChanges**](ApprovalSheetChanges.md) | POST request body |  |
| **x_pf_store_id** | **String** | Use this to specify which store you want to use (required only for account level token) | [optional] |

### Return type

[**SubmitApprovalSheetChanges200Response**](SubmitApprovalSheetChanges200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

