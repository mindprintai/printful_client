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

# Unit tests for Printful::MockupGeneratorAPIClient
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'MockupGeneratorAPIClient' do
  before do
    # run before each test
    @api_instance = Printful::MockupGeneratorAPIClient.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MockupGeneratorAPIClient' do
    it 'should create an instance of MockupGeneratorAPIClient' do
      expect(@api_instance).to be_instance_of(Printful::MockupGeneratorAPIClient)
    end
  end

  # unit tests for create_generator_task
  # Create a mockup generation task
  # Creates an asynchronous mockup generation task. Generation result can be retrieved using mockup generation task retrieval endpoint.&lt;br&gt; **Rate limiting**: Up to 10 requests per 60 seconds for established stores; 2 requests per 60 seconds for new stores. Currently available rate is returned in response headers. A 60 seconds lockout is applied if request count is exceeded. We also limit the number of files that may be generated to 20,000 files per account in a 24-hour period. 
  # @param id Product ID.
  # @param create_generation_task POST request body
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_pf_store_id Use this to specify which store you want to use (required only for account level token)
  # @return [CreateGeneratorTask200Response]
  describe 'create_generator_task test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_printfiles
  # Retrieve product variant printfiles
  # List of printfiles available for products variants. Printfile indicates what file resolution should be used to create a mockup or submit an order.  &lt;div class&#x3D;\&quot;alert alert-info\&quot;&gt; This endpoint uses DTG as a default printing technique for products with more than one technique available. For products with DTG and more techniques available please specify the correct technique in query by using the &#x60;technique&#x60; parameter. For more information read the &lt;a href&#x3D;\&quot;#section/Mockup-Generator-API-examples\&quot;&gt;examples&lt;/a&gt;. &lt;/div&gt; 
  # @param id Product ID.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :orientation 
  # @option opts [String] :technique 
  # @option opts [String] :x_pf_store_id Use this to specify which store you want to use (required only for account level token)
  # @return [GetPrintfiles200Response]
  describe 'get_printfiles test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_task
  # Mockup generation task result
  # Returns asynchronous mockup generation task result. If generation task is completed, it will contain a list of generated mockups.
  # @param task_key Task key retrieved when creating the generation task.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :x_pf_store_id Use this to specify which store you want to use (required only for account level token)
  # @return [CreateGeneratorTask200Response]
  describe 'get_task test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_templates
  # Layout templates
  # Retrieve list of templates that can be used for client-side positioning.  &lt;div class&#x3D;\&quot;alert alert-info\&quot;&gt; This endpoint uses DTG as a default printing technique for product layouts with more than one technique available. For products with DTG and more techniques available please specify the correct technique in query by using the &#x60;technique&#x60; parameter. For more information read the &lt;a href&#x3D;\&quot;#section/Mockup-Generator-API-examples\&quot;&gt;examples&lt;/a&gt;. &lt;/div&gt; 
  # @param id Product ID.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :orientation 
  # @option opts [String] :technique 
  # @option opts [String] :x_pf_store_id Use this to specify which store you want to use (required only for account level token)
  # @return [GetTemplates200Response]
  describe 'get_templates test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
