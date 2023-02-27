import json
from genson_ext import CustomSchemaBuilder

# check if a string is json or not
def is_json(json_string):
  try:
    json.loads(json_string)
  except ValueError as e:
    return False
  return True

# returns a new instance of the custom schema builder type
def get_custom_builder():
  return CustomSchemaBuilder(schema_uri='http://json-schema.org/draft-07/schema#')


def is_json_not_empty(json_string):
  return is_json(json_string) and json_string != ''