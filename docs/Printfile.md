# Printful::Printfile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **printfile_id** | **Integer** | Unique printfile identifier. | [optional] |
| **width** | **Integer** | Width in pixels. | [optional] |
| **height** | **Integer** | Height in pixels. | [optional] |
| **dpi** | **Integer** | Resulting DPI for given width and height. | [optional] |
| **fill_mode** | **String** | Indicates if printfile will be used in cover or fit mode. Cover mode can produce cropping if side ratio does not match printfile. | [optional] |
| **can_rotate** | **Boolean** | Indicates if printfile can be rotated horizontally (e.g. for posters). | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::Printfile.new(
  printfile_id: 1,
  width: 1800,
  height: 2400,
  dpi: 150,
  fill_mode: fit,
  can_rotate: false
)
```

