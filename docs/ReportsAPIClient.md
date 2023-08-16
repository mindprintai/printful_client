# Printful::ReportsAPIClient

All URIs are relative to *https://api.printful.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_statistics**](ReportsAPIClient.md#get_statistics) | **GET** /reports/statistics | Get statistics |


## get_statistics

> <GetStatistics200Response> get_statistics(date_from, date_to, report_types, opts)

Get statistics

Returns statistics for specified report types.  You need to specify the report types you want to retrieve in the `report_types` query parameter as a comma-separated list, e.g. `report_types=sales_and_costs,profit`.  **Note**: You cannot get statistics for a period longer than 6 months.  #### Example  To get statistics in the default currency of a store for `sales_and_costs` and `profit` reports for August 2022, you can use the following URL: https://api.printful.com/reports/statistics?report_types=sales_and_costs,profit&date_from=2022-08-01&date_to=2022-08-31.  ### Report types  Currently, the following report types are available:  | Report type                | Description                                              | |----------------------------|----------------------------------------------------------| | `sales_and_costs`          | Detailed information on sales and costs grouped by date. | | `sales_and_costs_summary`  | Short information on sales and costs grouped by date.    | | `printful_costs`           | Amount paid to Printful for fulfillment and shipping.    | | `profit`                   | Profit in the specified period.                          | | `total_paid_orders`        | The number of paid orders in the specified period.       | | `costs_by_amount`          | Information on costs by amount grouped by date.          | | `costs_by_product`         | Information on costs grouped by product.                 | | `costs_by_variant`         | Information on costs grouped by variant.                 | | `average_fulfillment_time` | Average time it took Printful to fulfill Your orders.    |  The response structure for the specific reports is documented in the response schema (`result.store_statistics.[reportName]`). 

### Examples

```ruby
require 'time'
require 'printful_client'
# setup authorization
Printful.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Printful::ReportsAPIClient.new
date_from = Date.parse('Mon Aug 01 00:00:00 UTC 2022') # Date | The beginning of the period to get the statistics from (date in `Y-m-d` format).
date_to = Date.parse('Wed Aug 31 00:00:00 UTC 2022') # Date | The end of the period to get the statistics from (date in `Y-m-d` format).
report_types = 'sales_and_costs,profit' # String | A comma-separated list of report types to be retrieved.
opts = {
  x_pf_store_id: 'x_pf_store_id_example', # String | Use this to specify which store you want to use (required only for account level token)
  currency: 'USD' # String | The currency (3-letter code) to return the statistics in. You can also specify `display_currency` as the value to get the statistics in the account's display currency. The store currency will be used by default.
}

begin
  # Get statistics
  result = api_instance.get_statistics(date_from, date_to, report_types, opts)
  p result
rescue Printful::ApiError => e
  puts "Error when calling ReportsAPIClient->get_statistics: #{e}"
end
```

#### Using the get_statistics_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetStatistics200Response>, Integer, Hash)> get_statistics_with_http_info(date_from, date_to, report_types, opts)

```ruby
begin
  # Get statistics
  data, status_code, headers = api_instance.get_statistics_with_http_info(date_from, date_to, report_types, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetStatistics200Response>
rescue Printful::ApiError => e
  puts "Error when calling ReportsAPIClient->get_statistics_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date_from** | **Date** | The beginning of the period to get the statistics from (date in &#x60;Y-m-d&#x60; format). |  |
| **date_to** | **Date** | The end of the period to get the statistics from (date in &#x60;Y-m-d&#x60; format). |  |
| **report_types** | **String** | A comma-separated list of report types to be retrieved. |  |
| **x_pf_store_id** | **String** | Use this to specify which store you want to use (required only for account level token) | [optional] |
| **currency** | **String** | The currency (3-letter code) to return the statistics in. You can also specify &#x60;display_currency&#x60; as the value to get the statistics in the account&#39;s display currency. The store currency will be used by default. | [optional] |

### Return type

[**GetStatistics200Response**](GetStatistics200Response.md)

### Authorization

[OAuth](../README.md#OAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

