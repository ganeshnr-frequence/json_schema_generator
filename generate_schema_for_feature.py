import json
from genson_ext import CustomSchemaBuilder
from util import is_json
from db_executor import get_feature_config, get_strategy_feature_config
    
#variables
feature_config = get_feature_config()
strategy_feature_config = get_strategy_feature_config()


for w in feature_config:
    builder = CustomSchemaBuilder(schema_uri='http://json-schema.org/draft-07/schema#') # add json schema version
       
    if is_json(w['config_json']) and w['config_json'] != '{}' and w['config_json'] != '' and w['config_json'] != '[]':
        builder.add_object(json.loads(w['config_json']))
        
    filtered_result = filter(lambda i: i['id'] == w['id'], strategy_feature_config)
    for fr in filtered_result:
        if is_json(fr['config_json']) and fr['config_json'] != '{}' and fr['config_json'] != '' and fr['config_json'] != '[]':
                builder.add_object(json.loads(fr['config_json']))
    
    
    # Serializing json
    json_object = json.dumps(builder.to_schema(), indent=4)    
    
    # Writing to sample.json
    with open("./feature_schema/" + str(w['id']) + "." + w["name"].lower() + ".schema.json", "w") as outfile:
        outfile.write(json_object)
    
    


