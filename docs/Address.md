# Printful::Address

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Full name | [optional] |
| **company** | **String** | Company name | [optional] |
| **address1** | **String** | Address line 1 | [optional] |
| **address2** | **String** | Address line 2 | [optional] |
| **city** | **String** | City | [optional] |
| **state_code** | **String** | State code | [optional] |
| **state_name** | **String** | State name | [optional] |
| **country_code** | **String** | Country code | [optional] |
| **country_name** | **String** | Country name | [optional] |
| **zip** | **String** | ZIP/Postal code | [optional] |
| **phone** | **String** | Phone number | [optional] |
| **email** | **String** | Email address | [optional] |
| **tax_number** | **String** | TAX number (&#x60;optional&#x60;, but in case of Brazil country this field becomes &#x60;required&#x60; and will be used as CPF/CNPJ number)&lt;br&gt; CPF format is 000.000.000-00 (14 characters);&lt;br&gt; CNPJ format is 00.000.000/0000-00 (18 characters). | [optional] |

## Example

```ruby
require 'printful_client'

instance = Printful::Address.new(
  name: John Smith,
  company: John Smith Inc,
  address1: 19749 Dearborn St,
  address2: null,
  city: Chatsworth,
  state_code: CA,
  state_name: California,
  country_code: US,
  country_name: United States,
  zip: 91311,
  phone: null,
  email: null,
  tax_number: 123.456.789-10
)
```

