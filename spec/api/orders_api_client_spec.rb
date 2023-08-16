=begin
#API Documentation | Printful

## About the Printful API  The Printful API is a RESTful API, that uses an HTTP protocol for communication. HTTP GET, POST, PUT and DELETE methods are used to access the API resources.  ## Requests and responses  ### Request endpoint All API requests have to be sent to this URL: ``` https://api.printful.com/ ``` If you are using a proxy, make sure that all requests have host header set to **api.printful.com**.  ### Request parameters Some mandatory parameters (like object identifiers) must be included in the request URL path ``` GET /orders/123 ``` Additional parameters can be passed as GET variables: ``` GET /orders?offset=10&limit=5 ``` For POST and PUT requests, a more complex data structure can be passed as JSON encoded data in the request body: ``` POST /orders  {\"recipient\":{...},\"items\":[...]} ```  ### Response body The response body is always a JSON object that contains a response status code (identical to the HTTP status code) and the result of the action. If the status code is 200, then the action was successful. ``` {    \"code\": 200, //Response status code    \"result\":{       //API method return data    //...    } } ```  Sometimes the response includes paging information to allow to browse larger result sets by adding offset and limit GET parameters to the request URL. ``` {    \"code\": 200, //Response status code    \"result\":[     {        //Item 11     },     {        //Item 12     }    ]    \"paging\": {       \"total\": 12,  //Total items available       \"offset\": 10, //Items skipped from the beginning       \"limit\": 20   //Number of items per page    } } ```  ## Error response If the API call is not successful, then the response code is not in the 2xx range and the `result` attribute contains an error description. ``` {     \"code\": 404,     \"result\": \"Not Found\",     \"error\": {         \"reason\": \"NotFound\",         \"message\": \"Not Found\"     } } ```  In general, response codes in the 4xx range indicate an error that resulted from the provided information (e.g. a required parameter was missing, etc.), and codes in the 5xx range indicate an error with Printful's servers.  ### Timestamps All timestamps from the API are returned as integers in UNIX timestamp format.  ### Rate Limits Printful API has a general rate limit of 120 API calls per minute. Additionally, endpoints that perform resource intensive operations (such as mockup generator) have a lower allowed request limit.  # Authentication  <!-- ReDoc-Inject: <security-definitions> -->

The version of the OpenAPI document: 1.0
Contact: devsupport@printful.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.0.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for Printful::OrdersAPIClient
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'OrdersAPIClient' do
  before do
    # run before each test
    @api_instance = Printful::OrdersAPIClient.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of OrdersAPIClient' do
    it 'should create an instance of OrdersAPIClient' do
      expect(@api_instance).to be_instance_of(Printful::OrdersAPIClient)
    end
  end

  # unit tests for cancel_order_by_id
  # Cancel an order
  # Cancels pending order or draft. Charged amount is returned to the store owner&#39;s credit card.
  # @param id Order ID (integer) or External ID (if prefixed with @)
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_pf_store_id Use this to specify which store you want to use (required only for account level token)
  # @return [CreateOrder200Response]
  describe 'cancel_order_by_id test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for confirm_order_by_id
  # Confirm draft for fulfillment
  # Approves for fulfillment an order that was saved as a draft. Store owner&#39;s credit card is charged when the order is submitted for fulfillment.
  # @param id Order ID (integer) or External ID (if prefixed with @)
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_pf_store_id Use this to specify which store you want to use (required only for account level token)
  # @return [CreateOrder200Response]
  describe 'confirm_order_by_id test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for create_order
  # Create a new order
  # Creates a new order and optionally submits it for fulfillment ([See examples](#section/Orders-API-examples))
  # @param order POST request body
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :confirm Automatically submit the newly created order for fulfillment (skip the Draft phase)
  # @option opts [Boolean] :update_existing Try to update existing order if an order with the specified external_id already exists
  # @option opts [String] :x_pf_store_id Use this to specify which store you want to use (required only for account level token)
  # @return [CreateOrder200Response]
  describe 'create_order test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for estimate_order_costs
  # Estimate order costs
  # Calculates the estimated order costs including item costs, print costs (back prints, inside labels etc.), shipping and taxes
  # @param order POST request body
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_pf_store_id Use this to specify which store you want to use (required only for account level token)
  # @return [EstimateOrderCosts200Response]
  describe 'estimate_order_costs test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_order_by_id
  # Get order data
  # Returns order data by ID or External ID.
  # @param id Order ID (integer) or External ID (if prefixed with @)
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_pf_store_id Use this to specify which store you want to use (required only for account level token)
  # @return [CreateOrder200Response]
  describe 'get_order_by_id test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_orders
  # Get list of orders
  # Returns list of order objects from your store
  # @param [Hash] opts the optional parameters
  # @option opts [String] :status Filter by order status
  # @option opts [Integer] :offset Result set offset
  # @option opts [Integer] :limit Number of items per page (max 100)
  # @return [GetOrders200Response]
  describe 'get_orders test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_order_by_id
  # Update order data
  #  Updates unsubmitted order and optionally submits it for the fulfillment.   Note that you need to post only the fields that need to be changed, not all required fields.   If items array is given in the update data, the items will be:   a) updated, if the update data contains the item id or external_id parameter that alreay exists   b) deleted, if the request doesn&#39;t contain the item with previously existing id   c) created as new if the id is not given or does not already exist 
  # @param id Order ID (integer) or External ID (if prefixed with @)
  # @param order POST request body
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :confirm Automatically submit the newly created order for fulfillment (skip the Draft phase)
  # @option opts [String] :x_pf_store_id Use this to specify which store you want to use (required only for account level token)
  # @return [CreateOrder200Response]
  describe 'update_order_by_id test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end