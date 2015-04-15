require 'json-schema'
require 'yaml'

valid_json = File.open('./valid-bookshop.json').read
invalid_json = File.open('./invalid-bookshop.json').read
schema = JSON.dump( YAML::load( File.open('./bookshop-schema.yml').read ) )
p JSON::Validator.fully_validate(schema, valid_json, :strict => false)
p JSON::Validator.fully_validate(schema, invalid_json, :strict => false)
