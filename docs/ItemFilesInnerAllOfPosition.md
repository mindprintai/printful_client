# Printful::ItemFilesInnerAllOfPosition

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **area_width** | **Integer** | Positioning area width on print area in pixels | [optional] |
| **area_height** | **Integer** | Positioning area height on print area in pixels | [optional] |
| **width** | **Integer** | Width of the image in given area in pixels | [optional] |
| **height** | **Integer** | Height of the image in given area in pixels | [optional] |
| **top** | **Integer** | Image top offset in given area in pixels | [optional] |
| **left** | **Integer** | Image left offset in given area in pixels | [optional] |
| **limit_to_print_area** | **Boolean** | Should limit printfile to print area | [optional][default to true] |

## Example

```ruby
require 'printful_client'

instance = Printful::ItemFilesInnerAllOfPosition.new(
  area_width: 1800,
  area_height: 2400,
  width: 1800,
  height: 1800,
  top: 300,
  left: 0,
  limit_to_print_area: null
)
```

