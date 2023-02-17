from genson import SchemaBuilder
from genson.schema.strategies import Object

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


class CustomSchemaBuilder(SchemaBuilder):
    """ all object nodes include additionalProperties """
    EXTRA_STRATEGIES = (PreventAdditionalProperties,)
    
    
