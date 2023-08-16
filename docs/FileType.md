# Printful::FileType

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Deprecated file type identifier. Please use type field instead! | [optional] |
| **type** | **String** | File type identifier - use this to specify a file&#39;s purpose when creating an order [See examples](#section/Placements) | [optional] |
| **title** | **String** | Display name | [optional] |
| **additional_price** | **String** | Additional price when this print file type is used | [optional] |
| **options** | [**Array&lt;CatalogFileOption&gt;**](CatalogFileOption.md) | Additional options available to product files | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::FileType.new(
  id: default,
  type: front,
  title: Front print,
  additional_price: 2.22,
  options: null
)
```

