import mysql.connector
import json
from genson import SchemaBuilder
from genson.schema.strategies import Object
from secrets_1 import secrets

# create an extended strategy for adding new keyword
class PreventAdditionalProperties(Object):
    # add 'minimum' to list of keywords
    KEYWORDS = (*Object.KEYWORDS, 'additionalProperties')

    # create a new instance variable
    def __init__(self, node_class):
        super().__init__(node_class)
        self.additionalProperties = False

    # include 'minimum' in the output
    def to_schema(self):
        schema = super().to_schema()
        schema['additionalProperties'] = self.additionalProperties
        return schema

# create a custom schema builder
class CustomSchemaBuilder(SchemaBuilder):
    """ all object nodes include additionalProperties """
    EXTRA_STRATEGIES = (PreventAdditionalProperties,)
    
    
    
#variables
widget = []
widget_config = []

#create a connection
cnx = mysql.connector.connect(user=secrets.get('DATABASE_USER'), password=secrets.get('DATABASE_PASSWORD'),
                              host=secrets.get('DATABASE_HOST'),
                              database=secrets.get('DATABASE_NAME'))


#open cursor
cursor = cnx.cursor()

#execute query
query = ("select id, name, config_json from widgets")
cursor.execute(query)

for (id, name, config_json) in cursor:
    widget.append({ 'id': id, 'name': name, 'config_json': ('{}' if config_json is None else config_json) })

#close the cursor
cursor.close()


#open cursor
cursor = cnx.cursor()

#execute query
query = ("select widget_id, config_json from strategies_join_widget_config")
cursor.execute(query)

for (id, config_json) in cursor:
    widget_config.append({ 'id': id, 'config_json': ('{}' if config_json is None else config_json) })

#close the cursor
cursor.close()

#close the connection
cnx.close()

def is_json(myjson):
  try:
    json.loads(myjson)
  except ValueError as e:
    return False
  return True


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
    
    


