import os
import json
import sys
from util import is_json_not_empty
from jsonschema import Draft7Validator
from db_executor import get_widget_config, get_strategy_widget_config, get_feature_config, get_strategy_feature_config

#default value for folder
folder_name = 'widget_schema'

n = len(sys.argv)

# take folder name from the command line argument
if n > 1:
    folder_name = sys.argv[1]
    print('Folder name: ' + folder_name)
    
#folder_name = folder_name + "/"

entries = os.listdir(folder_name)


print('Total no of schemas: ' + str(len(entries)) + '\n')


#variables
main_config = get_widget_config() 
strategy_config = get_strategy_widget_config()

if folder_name == 'feature_schema':
    main_config = get_feature_config()
    strategy_config = get_strategy_feature_config()

# combine both the configs
main_config.extend(strategy_config)

json_object = json.dumps(main_config, indent=4)    
    
with open("./config.json", "w") as outfile:
    outfile.write(json_object)


for e in entries:
    id = e.split('.')[0]
    
    # clear out all the invalid config json and empty json
    filtered_result = list(filter(lambda w: (str(w['id']) == id and is_json_not_empty(w['config_json'])), main_config))
    
    #validate these configs one by one with the schema
    # Opening JSON file
    f = open('./' + folder_name + '/' + e)
    schema = json.load(f)
    
    print('Validating ' + e)
    config_count = 0
    error_config_ids = []
    for i, j in enumerate(filtered_result):
        config_count += 1
        validator = Draft7Validator(schema=schema)
        
        if validator.is_valid(json.loads(j['config_json'])) != True:
            error_config_ids.append(str(i + 1))
            
    if len(error_config_ids) > 0:
        print('Error in configs ' + ','.join(error_config_ids))


    print('Total on of configs validated against the schema: ' + str(config_count))
    print('\n')