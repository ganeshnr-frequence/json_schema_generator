import json

# check if a string is json or not
def is_json(json_string):
  try:
    json.loads(json_string)
  except ValueError as e:
    return False
  return True