# Printful::Template

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id** | **Integer** | Template ID. | [optional] |
| **image_url** | **String** | Main template image URL. | [optional] |
| **background_url** | **String** | Background image URL (optional). | [optional] |
| **background_color** | **Integer** | HEX color code that should be used as a background color. | [optional] |
| **printfile_id** | **Integer** | Printfile ID that should be generated for this template. See [printfile API endpoint](#operation/getPrintfiles) for list of Printfiles. | [optional] |
| **template_width** | **Integer** | Width of the whole template in pixels. | [optional] |
| **template_height** | **Integer** | Height of the whole template in pixels. | [optional] |
| **print_area_width** | **Integer** | Print area width (image is positioned in this area). | [optional] |
| **print_area_height** | **Integer** | Print area height (image is positioned in this area). | [optional] |
| **print_area_top** | **Integer** | Print area top offset (offset in template). | [optional] |
| **print_area_left** | **Integer** | Print area left offset (offset in template). | [optional] |
| **is_template_on_front** | **Boolean** | Should the main template image (image_url) be used as an overlay or as a background. | [optional] |
| **orientation** | **String** | Wall art product orientation. Possible values: horizontal, vertical, any | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::Template.new(
  template_id: 919,
  image_url: https://www.printful.com/files/generator/40/11oz_template.png,
  background_url: null,
  background_color: null,
  printfile_id: 43,
  template_width: 560,
  template_height: 295,
  print_area_width: 520,
  print_area_height: 202,
  print_area_top: 18,
  print_area_left: 20,
  is_template_on_front: true,
  orientation: any
)
```

