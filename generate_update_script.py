import os
import json

folder_name = 'widget_schema'

entries = os.listdir(folder_name)


queries = []


with open("./update_script_widget_schema.sql", "w") as outfile:
    for e in entries:
        id = e.split('.')[0]
        
        #validate these configs one by one with the schema
        # Opening JSON file
        f = open('./' + folder_name + '/' + e)
        schema = json.load(f)
        
        query = 'UPDATE widgets SET schema_json = "{}" WHERE id = {}; \n'.format(schema, id)
        
        outfile.write(query)
    
    print('Done!!!')
    
    
folder_name = 'feature_schema'

entries = os.listdir(folder_name)


queries = []


with open("./update_script_feature_schema.sql", "w") as outfile:
    for e in entries:
        id = e.split('.')[0]
        
        #validate these configs one by one with the schema
        # Opening JSON file
        f = open('./' + folder_name + '/' + e)
        schema = json.load(f)
        
        query = 'UPDATE widget_features SET schema_json = "{}" WHERE id = {}; \n\n'.format(schema, id)
        
        outfile.write(query)
    
    print('Done!!!')
        


