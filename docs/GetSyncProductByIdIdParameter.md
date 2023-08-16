# Printful::GetSyncProductByIdIdParameter

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'printful_client'

Printful::GetSyncProductByIdIdParameter.openapi_one_of
# =>
# [
#   :'Integer',
#   :'String'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'printful_client'

Printful::GetSyncProductByIdIdParameter.build(data)
# => #<Integer:0x00007fdd4aab02a0>

Printful::GetSyncProductByIdIdParameter.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `Integer`
- `String`
- `nil` (if no type matches)

