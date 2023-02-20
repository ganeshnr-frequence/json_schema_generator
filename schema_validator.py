import os
import json
from util import is_json
from jsonschema import Draft7Validator
from db_executor import get_widget_config, get_strategy_widget_config

entries = os.listdir('widget_schema/')

    
#variables
widget_config = get_widget_config() 
strategy_widget_config = get_strategy_widget_config()


for e in entries:
    widget_id = e.split('.')[0]
    
    # clear out all the invalid config json and empty json
    filtered_result = list(filter(lambda w: (str(w['id']) == widget_id and is_json(w['config_json']) and w['config_json'] != '{}' and w['config_json'] != '' and w['config_json'] != '[]'), widget_config))
    
    #validate these configs one by one with the schema
    # Opening JSON file
    f = open('./widget_schema/' + e)
    schema = json.load(f)
    
    print('Validating ' + e)
    for j in filtered_result:
        validator = Draft7Validator(schema=schema)
        if validator.is_valid(json.loads(j['config_json'])) != True:
            print('error in schema ' + e)
            