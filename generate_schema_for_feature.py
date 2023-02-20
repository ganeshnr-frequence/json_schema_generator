import json
from util import get_custom_builder, is_json_empty
from db_executor import get_feature_config, get_strategy_feature_config
    
#variables
feature_config = get_feature_config()
strategy_feature_config = get_strategy_feature_config()

schema_count = 0

for w in feature_config:
    builder = get_custom_builder()
    schema_count += 1
    
    if is_json_empty(w['config_json']):
        builder.add_object(json.loads(w['config_json']))
    
    # filter the config specific to the feature
    filtered_result = filter(lambda i: i['id'] == w['id'], strategy_feature_config)
    
    for fr in filtered_result:
        if is_json_empty(fr['config_json']):
                builder.add_object(json.loads(fr['config_json']))
    
    
    # Serializing json
    json_object = json.dumps(builder.to_schema(), indent=4)    
    
    with open("./feature_schema/" + str(w['id']) + "." + w["name"].lower() + ".schema.json", "w") as outfile:
        outfile.write(json_object)
    
    
print('Total No of Schemas Created: ' + str(schema_count))