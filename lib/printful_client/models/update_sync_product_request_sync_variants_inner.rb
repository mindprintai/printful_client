=begin
#API Documentation | Printful

## About the Printful API  The Printful API is a RESTful API, that uses an HTTP protocol for communication. HTTP GET, POST, PUT and DELETE methods are used to access the API resources.  ## Requests and responses  ### Request endpoint All API requests have to be sent to this URL: ``` https://api.printful.com/ ``` If you are using a proxy, make sure that all requests have host header set to **api.printful.com**.  ### Request parameters Some mandatory parameters (like object identifiers) must be included in the request URL path ``` GET /orders/123 ``` Additional parameters can be passed as GET variables: ``` GET /orders?offset=10&limit=5 ``` For POST and PUT requests, a more complex data structure can be passed as JSON encoded data in the request body: ``` POST /orders  {\"recipient\":{...},\"items\":[...]} ```  ### Response body The response body is always a JSON object that contains a response status code (identical to the HTTP status code) and the result of the action. If the status code is 200, then the action was successful. ``` {    \"code\": 200, //Response status code    \"result\":{       //API method return data    //...    } } ```  Sometimes the response includes paging information to allow to browse larger result sets by adding offset and limit GET parameters to the request URL. ``` {    \"code\": 200, //Response status code    \"result\":[     {        //Item 11     },     {        //Item 12     }    ]    \"paging\": {       \"total\": 12,  //Total items available       \"offset\": 10, //Items skipped from the beginning       \"limit\": 20   //Number of items per page    } } ```  ## Error response If the API call is not successful, then the response code is not in the 2xx range and the `result` attribute contains an error description. ``` {     \"code\": 404,     \"result\": \"Not Found\",     \"error\": {         \"reason\": \"NotFound\",         \"message\": \"Not Found\"     } } ```  In general, response codes in the 4xx range indicate an error that resulted from the provided information (e.g. a required parameter was missing, etc.), and codes in the 5xx range indicate an error with Printful's servers.  ### Timestamps All timestamps from the API are returned as integers in UNIX timestamp format.  ### Rate Limits Printful API has a general rate limit of 120 API calls per minute. Additionally, endpoints that perform resource intensive operations (such as mockup generator) have a lower allowed request limit.  # Authentication  <!-- ReDoc-Inject: <security-definitions> -->

The version of the OpenAPI document: 1.0
Contact: devsupport@printful.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.0.0-SNAPSHOT

=end

require 'date'
require 'time'

module Printful
  class UpdateSyncProductRequestSyncVariantsInner
    # Sync Variant ID
    attr_accessor :id

    # Variant ID from the Ecommerce platform
    attr_accessor :external_id

    # Sync Product ID that this variant belongs to
    attr_accessor :sync_product_id

    # Sync Variant name
    attr_accessor :name

    # Indicates if this Sync Variant is properly linked with Printful product
    attr_accessor :synced

    # Printful Variant ID that this Sync Variant is synced to
    attr_accessor :variant_id

    # Retail price that this item is sold for
    attr_accessor :retail_price

    # Currency in which prices are returned
    attr_accessor :currency

    # Indicates if this Sync Variant is ignored
    attr_accessor :is_ignored

    # SKU of this Sync Variant
    attr_accessor :sku

    attr_accessor :product

    # Array of attached printfiles / preview images
    attr_accessor :files

    # Array of additional options for the configured product/variant [See examples](#section/Options)
    attr_accessor :options

    # Printful Variant catalog category ID
    attr_accessor :main_category_id

    # Warehousing variant ID. If sync variant is connected with a warehousing item, this is its ID
    attr_accessor :warehouse_product_variant_id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'external_id' => :'external_id',
        :'sync_product_id' => :'sync_product_id',
        :'name' => :'name',
        :'synced' => :'synced',
        :'variant_id' => :'variant_id',
        :'retail_price' => :'retail_price',
        :'currency' => :'currency',
        :'is_ignored' => :'is_ignored',
        :'sku' => :'sku',
        :'product' => :'product',
        :'files' => :'files',
        :'options' => :'options',
        :'main_category_id' => :'main_category_id',
        :'warehouse_product_variant_id' => :'warehouse_product_variant_id'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'Integer',
        :'external_id' => :'String',
        :'sync_product_id' => :'Integer',
        :'name' => :'String',
        :'synced' => :'Boolean',
        :'variant_id' => :'Integer',
        :'retail_price' => :'String',
        :'currency' => :'String',
        :'is_ignored' => :'Boolean',
        :'sku' => :'String',
        :'product' => :'SyncVariantProduct',
        :'files' => :'Array<File>',
        :'options' => :'Array<ItemOption>',
        :'main_category_id' => :'Integer',
        :'warehouse_product_variant_id' => :'Integer'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'SyncVariant'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Printful::UpdateSyncProductRequestSyncVariantsInner` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Printful::UpdateSyncProductRequestSyncVariantsInner`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'external_id')
        self.external_id = attributes[:'external_id']
      end

      if attributes.key?(:'sync_product_id')
        self.sync_product_id = attributes[:'sync_product_id']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'synced')
        self.synced = attributes[:'synced']
      end

      if attributes.key?(:'variant_id')
        self.variant_id = attributes[:'variant_id']
      end

      if attributes.key?(:'retail_price')
        self.retail_price = attributes[:'retail_price']
      end

      if attributes.key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.key?(:'is_ignored')
        self.is_ignored = attributes[:'is_ignored']
      end

      if attributes.key?(:'sku')
        self.sku = attributes[:'sku']
      end

      if attributes.key?(:'product')
        self.product = attributes[:'product']
      end

      if attributes.key?(:'files')
        if (value = attributes[:'files']).is_a?(Array)
          self.files = value
        end
      end

      if attributes.key?(:'options')
        if (value = attributes[:'options']).is_a?(Array)
          self.options = value
        end
      end

      if attributes.key?(:'main_category_id')
        self.main_category_id = attributes[:'main_category_id']
      end

      if attributes.key?(:'warehouse_product_variant_id')
        self.warehouse_product_variant_id = attributes[:'warehouse_product_variant_id']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          external_id == o.external_id &&
          sync_product_id == o.sync_product_id &&
          name == o.name &&
          synced == o.synced &&
          variant_id == o.variant_id &&
          retail_price == o.retail_price &&
          currency == o.currency &&
          is_ignored == o.is_ignored &&
          sku == o.sku &&
          product == o.product &&
          files == o.files &&
          options == o.options &&
          main_category_id == o.main_category_id &&
          warehouse_product_variant_id == o.warehouse_product_variant_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, external_id, sync_product_id, name, synced, variant_id, retail_price, currency, is_ignored, sku, product, files, options, main_category_id, warehouse_product_variant_id].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = Printful.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
