=begin
#API Documentation | Printful

## About the Printful API  The Printful API is a RESTful API, that uses an HTTP protocol for communication. HTTP GET, POST, PUT and DELETE methods are used to access the API resources.  ## Requests and responses  ### Request endpoint All API requests have to be sent to this URL: ``` https://api.printful.com/ ``` If you are using a proxy, make sure that all requests have host header set to **api.printful.com**.  ### Request parameters Some mandatory parameters (like object identifiers) must be included in the request URL path ``` GET /orders/123 ``` Additional parameters can be passed as GET variables: ``` GET /orders?offset=10&limit=5 ``` For POST and PUT requests, a more complex data structure can be passed as JSON encoded data in the request body: ``` POST /orders  {\"recipient\":{...},\"items\":[...]} ```  ### Response body The response body is always a JSON object that contains a response status code (identical to the HTTP status code) and the result of the action. If the status code is 200, then the action was successful. ``` {    \"code\": 200, //Response status code    \"result\":{       //API method return data    //...    } } ```  Sometimes the response includes paging information to allow to browse larger result sets by adding offset and limit GET parameters to the request URL. ``` {    \"code\": 200, //Response status code    \"result\":[     {        //Item 11     },     {        //Item 12     }    ]    \"paging\": {       \"total\": 12,  //Total items available       \"offset\": 10, //Items skipped from the beginning       \"limit\": 20   //Number of items per page    } } ```  ## Error response If the API call is not successful, then the response code is not in the 2xx range and the `result` attribute contains an error description. ``` {     \"code\": 404,     \"result\": \"Not Found\",     \"error\": {         \"reason\": \"NotFound\",         \"message\": \"Not Found\"     } } ```  In general, response codes in the 4xx range indicate an error that resulted from the provided information (e.g. a required parameter was missing, etc.), and codes in the 5xx range indicate an error with Printful's servers.  ### Timestamps All timestamps from the API are returned as integers in UNIX timestamp format.  ### Rate Limits Printful API has a general rate limit of 120 API calls per minute. Additionally, endpoints that perform resource intensive operations (such as mockup generator) have a lower allowed request limit.  # Authentication  <!-- ReDoc-Inject: <security-definitions> -->

The version of the OpenAPI document: 1.0
Contact: devsupport@printful.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.0.0-SNAPSHOT

=end

require 'cgi'

module Printful
  class ShippingRateAPIClient
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Calculate shipping rates
    # Returns available shipping options and rates for the given list of products.
    # @param calculate_shipping_rates [CalculateShippingRates] POST request body
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_pf_store_id Use this to specify which store you want to use (required only for account level token)
    # @return [CalculateShippingRates200Response]
    def calculate_shipping_rates(calculate_shipping_rates, opts = {})
      data, _status_code, _headers = calculate_shipping_rates_with_http_info(calculate_shipping_rates, opts)
      data
    end

    # Calculate shipping rates
    # Returns available shipping options and rates for the given list of products.
    # @param calculate_shipping_rates [CalculateShippingRates] POST request body
    # @param [Hash] opts the optional parameters
    # @option opts [String] :x_pf_store_id Use this to specify which store you want to use (required only for account level token)
    # @return [Array<(CalculateShippingRates200Response, Integer, Hash)>] CalculateShippingRates200Response data, response status code and response headers
    def calculate_shipping_rates_with_http_info(calculate_shipping_rates, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ShippingRateAPIClient.calculate_shipping_rates ...'
      end
      # verify the required parameter 'calculate_shipping_rates' is set
      if @api_client.config.client_side_validation && calculate_shipping_rates.nil?
        fail ArgumentError, "Missing the required parameter 'calculate_shipping_rates' when calling ShippingRateAPIClient.calculate_shipping_rates"
      end
      # resource path
      local_var_path = '/shipping/rates'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end
      header_params[:'X-PF-Store-Id'] = opts[:'x_pf_store_id'] if !opts[:'x_pf_store_id'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(calculate_shipping_rates)

      # return_type
      return_type = opts[:debug_return_type] || 'CalculateShippingRates200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth']

      new_options = opts.merge(
        :operation => :"ShippingRateAPIClient.calculate_shipping_rates",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ShippingRateAPIClient#calculate_shipping_rates\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
