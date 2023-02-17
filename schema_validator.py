import os
import mysql.connector
import json
from jsonschema import Draft7Validator
from secrets_1 import secrets

entries = os.listdir('widget_schema/')

    
#variables
widget_config = []


#get all the config json for the widget from widgets and strategies_join_widget_config table
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
    widget_config.append({ 'id': id, 'config_json': ('{}' if config_json is None else config_json) })

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


for e in entries:
    widget_id = e.split('.')[0]
    
    # clear out all the invalid config json and empty json
    filtered_result = list(filter(lambda w: (str(w['id']) == widget_id and is_json(w['config_json']) and w['config_json'] != '{}' and w['config_json'] != '' and w['config_json'] != '[]'), widget_config))
    
    #validate these configs one by one with the schema
    # Opening JSON file
    f = open('./widget_schema/' + e)
    schema = json.load(f)
    
    for j in filtered_result:
        validator = Draft7Validator(schema=schema)
        if validator.is_valid(json.loads(j['config_json'])) != True:
            print('error in schema ' + e)
            