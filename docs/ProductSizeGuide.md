# Printful::ProductSizeGuide

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **Integer** | Product ID |  |
| **available_sizes** | **Array&lt;String&gt;** | The sizes available for the Product |  |
| **size_tables** | [**Array&lt;SizeTable&gt;**](SizeTable.md) | Size tables for the product |  |

## Example

```ruby
require 'printful_client'

instance = Printful::ProductSizeGuide.new(
  product_id: 13,
  available_sizes: [&quot;S&quot;,&quot;M&quot;,&quot;L&quot;],
  size_tables: [{&quot;type&quot;:&quot;measure_yourself&quot;,&quot;unit&quot;:&quot;inches&quot;,&quot;description&quot;:&quot;&lt;p&gt;Measurements are provided by suppliers.&lt;br /&gt;&lt;br /&gt;US customers should order a size up as the EU sizes for this supplier correspond to a smaller size in the US market.&lt;/p&gt;\\n&lt;p&gt;Product measurements may vary by up to 2\\\&quot; (5 cm).&amp;nbsp;&lt;/p&gt;&quot;,&quot;image_url&quot;:&quot;https://s3.staging.printful.com/upload/measure-yourself/6a/6a4fe322f592f2b91d5a735d7ff8d1c0_t?v&#x3D;1652962720&quot;,&quot;image_description&quot;:&quot;&lt;h6&gt;&lt;strong&gt;A Length&lt;/strong&gt;&lt;/h6&gt;\\n&lt;p dir&#x3D;\\\&quot;ltr\\\&quot;&gt;&lt;span id&#x3D;\\\&quot;docs-internal-guid-a3ac3082-7fff-5f98-2623-3eb38d5f43a1\\\&quot;&gt;Place the end of the tape beside the collar at the top of the tee (Highest Point Shoulder). Pull the tape measure t&lt;/span&gt;&lt;span id&#x3D;\\\&quot;docs-internal-guid-a3ac3082-7fff-5f98-2623-3eb38d5f43a1\\\&quot;&gt;o the bottom of the shirt.&lt;/span&gt;&lt;/p&gt;\\n&lt;h6&gt;B Chest&lt;/h6&gt;\\n&lt;p dir&#x3D;\\\&quot;ltr\\\&quot;&gt;Measure yourself around the fullest part of your chest. Keep the tape measure horizontal.&lt;/p&gt;&quot;,&quot;measurements&quot;:[{&quot;type_label&quot;:&quot;Length&quot;,&quot;values&quot;:[{&quot;size&quot;:&quot;S&quot;,&quot;value&quot;:&quot;24&quot;},{&quot;size&quot;:&quot;M&quot;,&quot;value&quot;:&quot;26&quot;},{&quot;size&quot;:&quot;L&quot;,&quot;value&quot;:&quot;28&quot;}]},{&quot;type_label&quot;:&quot;Chest&quot;,&quot;values&quot;:[{&quot;size&quot;:&quot;S&quot;,&quot;min_value&quot;:&quot;14&quot;,&quot;max_value&quot;:&quot;16&quot;},{&quot;size&quot;:&quot;M&quot;,&quot;min_value&quot;:&quot;18&quot;,&quot;max_value&quot;:&quot;20&quot;},{&quot;size&quot;:&quot;L&quot;,&quot;min_value&quot;:&quot;22&quot;,&quot;max_value&quot;:&quot;24&quot;}]}]},{&quot;type&quot;:&quot;product_measure&quot;,&quot;unit&quot;:&quot;inches&quot;,&quot;description&quot;:&quot;&lt;p dir&#x3D;\\\&quot;ltr\\\&quot;&gt;Measurements are provided by our suppliers. Product measurements may vary by up to 2\\\&quot; (5 cm).&lt;/p&gt;\\n&lt;p dir&#x3D;\\\&quot;ltr\\\&quot;&gt;US customers should order a size up as the EU sizes for this supplier correspond to a smaller size in the US market.&lt;/p&gt;\\n&lt;p dir&#x3D;\\\&quot;ltr\\\&quot;&gt;Pro tip! Measure one of your products at home and compare with the measurements you see in this guide.&lt;/p&gt;&quot;,&quot;image_url&quot;:&quot;https://s3.staging.printful.com/upload/product-measure/85/857e7cc8b802da216e7f1a6114075a72_t?v&#x3D;1652962720&quot;,&quot;image_description&quot;:&quot;&lt;h6&gt;&lt;strong&gt;A Length&lt;/strong&gt;&lt;/h6&gt;\\n&lt;p dir&#x3D;\\\&quot;ltr\\\&quot;&gt;&lt;span id&#x3D;\\\&quot;docs-internal-guid-a3ac3082-7fff-5f98-2623-3eb38d5f43a1\\\&quot;&gt;Place the end of the tape beside the collar at the top of the tee (Highest Point Shoulder). Pull the tape measure t&lt;/span&gt;&lt;span id&#x3D;\\\&quot;docs-internal-guid-a3ac3082-7fff-5f98-2623-3eb38d5f43a1\\\&quot;&gt;o the bottom of the shirt.&lt;/span&gt;&lt;/p&gt;\\n&lt;h6&gt;B Width&lt;/h6&gt;\\n&lt;p dir&#x3D;\\\&quot;ltr\\\&quot;&gt;Place the end of the tape at the seam under the sleeve and pull the tape measure across the shirt to the seam under the opposite sleeve.&lt;/p&gt;&quot;,&quot;measurements&quot;:[{&quot;type_label&quot;:&quot;Length&quot;,&quot;values&quot;:[{&quot;size&quot;:&quot;S&quot;,&quot;value&quot;:&quot;24&quot;},{&quot;size&quot;:&quot;M&quot;,&quot;value&quot;:&quot;26&quot;},{&quot;size&quot;:&quot;L&quot;,&quot;value&quot;:&quot;28&quot;}]},{&quot;type_label&quot;:&quot;Width&quot;,&quot;values&quot;:[{&quot;size&quot;:&quot;S&quot;,&quot;min_value&quot;:&quot;14&quot;,&quot;max_value&quot;:&quot;16&quot;},{&quot;size&quot;:&quot;M&quot;,&quot;min_value&quot;:&quot;18&quot;,&quot;max_value&quot;:&quot;20&quot;},{&quot;size&quot;:&quot;L&quot;,&quot;min_value&quot;:&quot;22&quot;,&quot;max_value&quot;:&quot;24&quot;}]}]},{&quot;type&quot;:&quot;measure_yourself&quot;,&quot;unit&quot;:&quot;cm&quot;,&quot;description&quot;:&quot;&lt;p&gt;Measurements are provided by suppliers.&lt;br /&gt;&lt;br /&gt;US customers should order a size up as the EU sizes for this supplier correspond to a smaller size in the US market.&lt;/p&gt;\\n&lt;p&gt;Product measurements may vary by up to 2\\\&quot; (5 cm).&amp;nbsp;&lt;/p&gt;&quot;,&quot;image_url&quot;:&quot;https://s3.staging.printful.com/upload/measure-yourself/6a/6a4fe322f592f2b91d5a735d7ff8d1c0_t?v&#x3D;1652962720&quot;,&quot;image_description&quot;:&quot;&lt;h6&gt;&lt;strong&gt;A Length&lt;/strong&gt;&lt;/h6&gt;\\n&lt;p dir&#x3D;\\\&quot;ltr\\\&quot;&gt;&lt;span id&#x3D;\\\&quot;docs-internal-guid-a3ac3082-7fff-5f98-2623-3eb38d5f43a1\\\&quot;&gt;Place the end of the tape beside the collar at the top of the tee (Highest Point Shoulder). Pull the tape measure t&lt;/span&gt;&lt;span id&#x3D;\\\&quot;docs-internal-guid-a3ac3082-7fff-5f98-2623-3eb38d5f43a1\\\&quot;&gt;o the bottom of the shirt.&lt;/span&gt;&lt;/p&gt;\\n&lt;h6&gt;B Chest&lt;/h6&gt;\\n&lt;p dir&#x3D;\\\&quot;ltr\\\&quot;&gt;Measure yourself around the fullest part of your chest. Keep the tape measure horizontal.&lt;/p&gt;&quot;,&quot;measurements&quot;:[{&quot;type_label&quot;:&quot;Length&quot;,&quot;values&quot;:[{&quot;size&quot;:&quot;S&quot;,&quot;value&quot;:&quot;60.96&quot;},{&quot;size&quot;:&quot;M&quot;,&quot;value&quot;:&quot;66.04&quot;},{&quot;size&quot;:&quot;L&quot;,&quot;value&quot;:&quot;71.12&quot;}]},{&quot;type_label&quot;:&quot;Chest&quot;,&quot;values&quot;:[{&quot;size&quot;:&quot;S&quot;,&quot;min_value&quot;:&quot;35.56&quot;,&quot;max_value&quot;:&quot;40.64&quot;},{&quot;size&quot;:&quot;M&quot;,&quot;min_value&quot;:&quot;45.72&quot;,&quot;max_value&quot;:&quot;50.80&quot;},{&quot;size&quot;:&quot;L&quot;,&quot;min_value&quot;:&quot;55.88&quot;,&quot;max_value&quot;:&quot;60.96&quot;}]}]},{&quot;type&quot;:&quot;product_measure&quot;,&quot;unit&quot;:&quot;cm&quot;,&quot;description&quot;:&quot;&lt;p dir&#x3D;\\\&quot;ltr\\\&quot;&gt;Measurements are provided by our suppliers. Product measurements may vary by up to 2\\\&quot; (5 cm).&lt;/p&gt;\\n&lt;p dir&#x3D;\\\&quot;ltr\\\&quot;&gt;US customers should order a size up as the EU sizes for this supplier correspond to a smaller size in the US market.&lt;/p&gt;\\n&lt;p dir&#x3D;\\\&quot;ltr\\\&quot;&gt;Pro tip! Measure one of your products at home and compare with the measurements you see in this guide.&lt;/p&gt;&quot;,&quot;image_url&quot;:&quot;https://s3.staging.printful.com/upload/product-measure/85/857e7cc8b802da216e7f1a6114075a72_t?v&#x3D;1652962720&quot;,&quot;image_description&quot;:&quot;&lt;h6&gt;&lt;strong&gt;A Length&lt;/strong&gt;&lt;/h6&gt;\\n&lt;p dir&#x3D;\\\&quot;ltr\\\&quot;&gt;&lt;span id&#x3D;\\\&quot;docs-internal-guid-a3ac3082-7fff-5f98-2623-3eb38d5f43a1\\\&quot;&gt;Place the end of the tape beside the collar at the top of the tee (Highest Point Shoulder). Pull the tape measure t&lt;/span&gt;&lt;span id&#x3D;\\\&quot;docs-internal-guid-a3ac3082-7fff-5f98-2623-3eb38d5f43a1\\\&quot;&gt;o the bottom of the shirt.&lt;/span&gt;&lt;/p&gt;\\n&lt;h6&gt;B Width&lt;/h6&gt;\\n&lt;p dir&#x3D;\\\&quot;ltr\\\&quot;&gt;Place the end of the tape at the seam under the sleeve and pull the tape measure across the shirt to the seam under the opposite sleeve.&lt;/p&gt;&quot;,&quot;measurements&quot;:[{&quot;type_label&quot;:&quot;Length&quot;,&quot;values&quot;:[{&quot;size&quot;:&quot;S&quot;,&quot;value&quot;:&quot;60.96&quot;},{&quot;size&quot;:&quot;M&quot;,&quot;value&quot;:&quot;66.04&quot;},{&quot;size&quot;:&quot;L&quot;,&quot;value&quot;:&quot;71.12&quot;}]},{&quot;type_label&quot;:&quot;Width&quot;,&quot;values&quot;:[{&quot;size&quot;:&quot;S&quot;,&quot;min_value&quot;:&quot;35.56&quot;,&quot;max_value&quot;:&quot;40.64&quot;},{&quot;size&quot;:&quot;M&quot;,&quot;min_value&quot;:&quot;45.72&quot;,&quot;max_value&quot;:&quot;50.80&quot;},{&quot;size&quot;:&quot;L&quot;,&quot;min_value&quot;:&quot;55.88&quot;,&quot;max_value&quot;:&quot;60.96&quot;}]}]},{&quot;type&quot;:&quot;international&quot;,&quot;unit&quot;:&quot;none&quot;,&quot;measurements&quot;:[{&quot;type_label&quot;:&quot;US size&quot;,&quot;values&quot;:[{&quot;size&quot;:&quot;S&quot;,&quot;min_value&quot;:&quot;8&quot;,&quot;max_value&quot;:&quot;10&quot;},{&quot;size&quot;:&quot;M&quot;,&quot;min_value&quot;:&quot;12&quot;,&quot;max_value&quot;:&quot;14&quot;},{&quot;size&quot;:&quot;L&quot;,&quot;min_value&quot;:&quot;16&quot;,&quot;max_value&quot;:&quot;18&quot;}]},{&quot;type_label&quot;:&quot;EU size&quot;,&quot;values&quot;:[{&quot;size&quot;:&quot;S&quot;,&quot;min_value&quot;:&quot;38&quot;,&quot;max_value&quot;:&quot;39&quot;},{&quot;size&quot;:&quot;M&quot;,&quot;min_value&quot;:&quot;40&quot;,&quot;max_value&quot;:&quot;41&quot;},{&quot;size&quot;:&quot;L&quot;,&quot;min_value&quot;:&quot;42&quot;,&quot;max_value&quot;:&quot;43&quot;}]},{&quot;type_label&quot;:&quot;UK size&quot;,&quot;values&quot;:[{&quot;size&quot;:&quot;S&quot;,&quot;min_value&quot;:&quot;4&quot;,&quot;max_value&quot;:&quot;6&quot;},{&quot;size&quot;:&quot;M&quot;,&quot;min_value&quot;:&quot;8&quot;,&quot;max_value&quot;:&quot;10&quot;},{&quot;size&quot;:&quot;L&quot;,&quot;min_value&quot;:&quot;12&quot;,&quot;max_value&quot;:&quot;14&quot;}]}]}]
)
```
