import json
from genson_ext import CustomSchemaBuilder
from util import is_json
from db_executor import get_widget_config, get_strategy_widget_config
    
#variables
widget = get_widget_config()
widget_config = get_strategy_widget_config()


for w in widget:
    builder = CustomSchemaBuilder(schema_uri='http://json-schema.org/draft-07/schema#') # add json schema version
       
    if is_json(w['config_json']) and w['config_json'] != '{}' and w['config_json'] != '' and w['config_json'] != '[]':
        builder.add_object(json.loads(w['config_json']))
        
    filtered_result = filter(lambda i: i['id'] == w['id'], widget_config)
    for fr in filtered_result:
        if is_json(fr['config_json']) and fr['config_json'] != '{}' and fr['config_json'] != '' and fr['config_json'] != '[]':
                builder.add_object(json.loads(fr['config_json']))
    
    
    # Serializing json
    json_object = json.dumps(builder.to_schema(), indent=4)    
    
    # Writing to sample.json
    with open("./widget_schema/" + str(w['id']) + "." + w["name"] + ".schema.json", "w") as outfile:
        outfile.write(json_object)
    
    


