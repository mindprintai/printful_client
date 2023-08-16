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
require 'date'

# Unit tests for Printful::Template
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Printful::Template do
  let(:instance) { Printful::Template.new }

  describe 'test an instance of Template' do
    it 'should create an instance of Template' do
      expect(instance).to be_instance_of(Printful::Template)
    end
  end
  describe 'test attribute "template_id"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "image_url"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "background_url"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "background_color"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "printfile_id"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "template_width"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "template_height"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "print_area_width"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "print_area_height"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "print_area_top"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "print_area_left"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "is_template_on_front"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "orientation"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["horizontal", "vertical", "any"])
      # validator.allowable_values.each do |value|
      #   expect { instance.orientation = value }.not_to raise_error
      # end
    end
  end

end
