import mysql.connector
from secrets_1 import secrets

def get_widget_config():
    widget = []
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
    
    #close the connection
    cnx.close()
    
    return widget

def get_strategy_widget_config():
    strategy_widget_config = []
    #create a connection
    cnx = mysql.connector.connect(user=secrets.get('DATABASE_USER'), password=secrets.get('DATABASE_PASSWORD'),
                                host=secrets.get('DATABASE_HOST'),
                                database=secrets.get('DATABASE_NAME'))
    
    #open cursor
    cursor = cnx.cursor()

    #execute query
    query = ("select widget_id, config_json from strategies_join_widget_config")
    cursor.execute(query)

    for (id, config_json) in cursor:
        strategy_widget_config.append({ 'id': id, 'config_json': ('{}' if config_json is None else config_json) })

    #close the cursor
    cursor.close()

    #close the connection
    cnx.close()
    
    return strategy_widget_config