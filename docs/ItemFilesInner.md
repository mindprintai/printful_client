# Printful::ItemFilesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Role of the file | [optional] |
| **id** | **Integer** | File ID | [optional][readonly] |
| **url** | **String** | Source URL where the file is downloaded from. The use of .ai .psd and .tiff files have been depreciated, if your application uses these file types or accepts these types from users you will need to add validation. |  |
| **options** | [**Array&lt;FileOption&gt;**](FileOption.md) | Array of additional options for this file [See examples](#section/Options) | [optional] |
| **hash** | **String** | MD5 checksum of the file | [optional][readonly] |
| **filename** | **String** | File name | [optional] |
| **mime_type** | **String** | MIME type of the file | [optional][readonly] |
| **size** | **Integer** | Size in bytes | [optional][readonly] |
| **width** | **Integer** | Width in pixels | [optional][readonly] |
| **height** | **Integer** | Height in pixels | [optional][readonly] |
| **dpi** | **Integer** | Resolution DPI.&lt;br&gt;**Note:** for vector files this may be indicated as only 72dpi, but it doesn&#39;t affect print quality since the vector files are resolution independent. | [optional][readonly] |
| **status** | **String** | File processing status:&lt;br&gt;**ok** - file was processed successfuly&lt;br&gt;**waiting** - file is being processed&lt;br&gt;**failed** - file failed to be processed | [optional][readonly] |
| **created** | **Integer** | File creation timestamp | [optional][readonly] |
| **thumbnail_url** | **String** | Small thumbnail URL | [optional][readonly] |
| **preview_url** | **String** | Medium preview image URL | [optional][readonly] |
| **visible** | **Boolean** | Show file in the Printfile Library (default true) | [optional] |
| **is_temporary** | **Boolean** | Whether it is a temporary printfile. | [optional][readonly] |
| **position** | [**ItemFilesInnerAllOfPosition**](ItemFilesInnerAllOfPosition.md) |  | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::ItemFilesInner.new(
  type: default,
  id: 10,
  url: https://www.example.com/files/tshirts/example.png,
  options: null,
  hash: ea44330b887dfec278dbc4626a759547,
  filename: shirt1.png,
  mime_type: image/png,
  size: 45582633,
  width: 1000,
  height: 1000,
  dpi: 300,
  status: ok,
  created: 1590051937,
  thumbnail_url: https://files.cdn.printful.com/files/ea4/ea44330b887dfec278dbc4626a759547_thumb.png,
  preview_url: https://files.cdn.printful.com/files/ea4/ea44330b887dfec278dbc4626a759547_thumb.png,
  visible: true,
  is_temporary: false,
  position: null
)
```

