import os
import json
from util import get_custom_builder
from jsonmerge import merge

folder_name = 'widget_schema'

entries = os.listdir(folder_name)

for e in entries:
    id = e.split('.')[0]
    print('./' + folder_name + '/' + e)
    
    with open('./' + folder_name + '/' + e, 'r') as f2:
        data = f2.read()
        schema = json.loads(data)
    
    with open('./' + folder_name + '/' + e, "w") as outfile:
        result = merge(schema, 
                {
                    "properties": {
                        "permissions": {
                            "type": "array",
                            "items": {
                                "enum": [ 
                                    "campaign_edit_campaign_name", 
                                    "campaign_edit_external_id",
                                    "campaign_edit_geos", 
                                    "campaign_edit_flights", 
                                    "campaign_edit_placements",
                                    "campaign_edit_network",
                                    "campaign_edit_creatives",
                                    "campaign_edit_history_beta",
                                    "active_inactive_switch",
                                    "enable_campaign_edit_facebook",
                                    "campaign_edit_rtb_keywords",
                                    "has_creative_third_party_tracking_tag_access",
                                    "campaign_edit_gf_edit_enabled",
                                    "has_conversion_edit_access",
                                    "framework_custom_polygon"
                                ]
                            }
                        }
                    }
                }
              )        
        outfile.write(json.dumps(result, indent=4))
        

folder_name = 'feature_schema'

entries = os.listdir(folder_name)

for e in entries:
    id = e.split('.')[0]
    print('./' + folder_name + '/' + e)
    
    with open('./' + folder_name + '/' + e, 'r') as f2:
        data = f2.read()
        schema = json.loads(data)
    
    with open('./' + folder_name + '/' + e, "w") as outfile:
        result = merge(schema, 
                {
                    "properties": {
                        "permissions": {
                            "type": "array",
                            "items": {
                                "enum": [ 
                                    "campaign_edit_campaign_name", 
                                    "campaign_edit_external_id",
                                    "campaign_edit_geos", 
                                    "campaign_edit_flights", 
                                    "campaign_edit_placements",
                                    "campaign_edit_network",
                                    "campaign_edit_creatives",
                                    "campaign_edit_history_beta",
                                    "active_inactive_switch",
                                    "enable_campaign_edit_facebook",
                                    "campaign_edit_rtb_keywords",
                                    "has_creative_third_party_tracking_tag_access",
                                    "campaign_edit_gf_edit_enabled",
                                    "has_conversion_edit_access",
                                    "framework_custom_polygon"
                                ]
                            }
                        }
                    }
                }
              )        
        outfile.write(json.dumps(result, indent=4))


print('Done!!!')