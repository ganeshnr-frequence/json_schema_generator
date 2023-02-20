import json
from util import get_custom_builder, is_json_empty
from db_executor import get_widget_config, get_strategy_widget_config
    
#variables
widget = get_widget_config()
widget_config = get_strategy_widget_config()

schema_count = 0

for w in widget:
    builder = get_custom_builder()
    schema_count += 1
    
    if is_json_empty(w['config_json']):
        builder.add_object(json.loads(w['config_json']))
    
    # filder the config specific to the widget
    filtered_result = filter(lambda i: i['id'] == w['id'], widget_config)
    
    for fr in filtered_result:
        if is_json_empty(fr['config_json']):
                builder.add_object(json.loads(fr['config_json']))
    
    
    # Serializing json
    json_object = json.dumps(builder.to_schema(), indent=4)    
    
    with open("./widget_schema/" + str(w['id']) + "." + w["name"] + ".schema.json", "w") as outfile:
        outfile.write(json_object)
    
print('Total No of Schemas Created: ' + str(schema_count))


