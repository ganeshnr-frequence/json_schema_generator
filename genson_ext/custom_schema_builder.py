from .strategy_additional_property import PreventAdditionalProperties
from genson import SchemaBuilder

class CustomSchemaBuilder(SchemaBuilder):
    """ all object nodes include additionalProperties """
    EXTRA_STRATEGIES = (PreventAdditionalProperties,)