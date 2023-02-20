import os
import json
import sys
from util import is_json
from jsonschema import Draft7Validator
from db_executor import get_widget_config, get_strategy_widget_config

#default value for folder
folder_name = 'widget_schema'

n = len(sys.argv)

# take folder name from the command line argument
if n > 1:
    folder_name = sys.argv[1]
    print('Folder name: ' + folder_name)
    
folder_name = folder_name + "/"

entries = os.listdir(folder_name)


print('Total no of schemas: ' + str(len(entries)))

    
#variables
widget_config = get_widget_config() 
strategy_widget_config = get_strategy_widget_config()


for e in entries:
    widget_id = e.split('.')[0]
    
    # clear out all the invalid config json and empty json
    filtered_result = list(filter(lambda w: (str(w['id']) == widget_id and is_json(w['config_json']) and w['config_json'] != '{}' and w['config_json'] != '' and w['config_json'] != '[]'), widget_config))
    
    #validate these configs one by one with the schema
    # Opening JSON file
    f = open('./' + folder_name + '/' + e)
    schema = json.load(f)
    
    print('Validating ' + e)
    for j in filtered_result:
        validator = Draft7Validator(schema=schema)
        if validator.is_valid(json.loads(j['config_json'])) != True:
            print('error in schema ' + e)
            