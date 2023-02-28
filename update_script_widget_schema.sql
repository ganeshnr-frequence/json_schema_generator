UPDATE widgets SET schema_json = "{'$schema': 'http://json-schema.org/draft-07/schema#', 'type': 'object', 'properties': {'label': {'type': 'string'}, 'options': {'type': 'object', 'properties': {'autoSave': {'type': ['boolean', 'string']}, 'showLabel': {'type': 'boolean'}, 'showProductSummary': {'type': 'boolean'}}, 'required': ['autoSave'], 'additionalProperties': False}, 'collation': {'type': 'object', 'properties': {'enabled': {'type': 'boolean'}, 'level': {'type': 'string'}}, 'required': ['enabled', 'level'], 'additionalProperties': False}, 'section': {'type': 'object', 'properties': {'title': {'type': 'string'}, 'displayOrder': {'type': 'integer'}, 'afterId': {'type': ['null', 'string']}, 'id': {'type': 'string'}, 'enabled': {'type': 'boolean'}, 'mergeInto': {'type': 'string'}}, 'required': ['afterId', 'displayOrder', 'enabled', 'id', 'title'], 'additionalProperties': False}, 'containerId': {'type': 'string'}, 'stylesConfig': {'type': 'object', 'properties': {'container': {'type': 'object', 'properties': {'box-shadow': {'type': 'string'}, 'margin': {'type': 'integer'}}, 'required': ['box-shadow'], 'additionalProperties': False}}, 'required': ['container'], 'additionalProperties': False}, 'validation': {'type': 'object', 'properties': {'message': {'type': 'string'}}, 'required': ['message'], 'additionalProperties': False}, 'cssConfig': {'type': 'object', 'additionalProperties': False}, 'displayName': {'type': 'string'}, 'layout': {'type': 'string'}, 'expandSidePanel': {'type': 'boolean'}, 'maxInstances': {'type': 'integer'}, 'maximumAllowedZips': {'type': 'integer'}, 'showInfoIcon': {'type': 'boolean'}, 'tooltipText': {'type': 'string'}, 'errorMessages': {'type': 'object', 'properties': {'required': {'type': 'string'}}, 'required': ['required'], 'additionalProperties': False}, 'validators': {'type': 'object', 'properties': {'required': {'type': 'null'}}, 'required': ['required'], 'additionalProperties': False}, 'processAutoCompleteDependentData': {'type': 'boolean'}, 'addBtnLocation': {'type': 'string'}, 'isMultiscreenWidget': {'type': 'boolean'}}, 'additionalProperties': False}" WHERE id = 23; 
UPDATE widgets SET schema_json = "{'$schema': 'http://json-schema.org/draft-07/schema#', 'type': 'object', 'properties': {'label': {'type': 'string'}, 'collation': {'type': 'object', 'properties': {'enabled': {'type': 'boolean'}}, 'required': ['enabled'], 'additionalProperties': False}, 'showCardLabel': {'type': 'boolean'}, 'radiusOptions': {'type': 'array', 'items': {'type': 'object', 'properties': {'text': {'type': 'string'}, 'value': {'type': 'string'}}, 'required': ['text', 'value'], 'additionalProperties': False}}, 'defaultRadiusType': {'type': 'string'}, 'conversionLabel': {'type': 'string'}, 'defaultRadius': {'type': 'integer'}, 'minimumRadius': {'type': 'integer'}, 'conversionType': {'type': 'string'}, 'hasOfflineVisits': {'type': 'boolean'}, 'hasAttributionIcon': {'type': 'boolean'}, 'hasConversionField': {'type': 'boolean'}, 'showMaximumRadiusAlert': {'type': 'boolean'}, 'conversionDefaultRadius': {'type': 'integer'}, 'conversionMaximumRadius': {'type': 'integer'}, 'conversionMinimumRadius': {'type': 'integer'}, 'conversionRadiusDefaults': {'type': 'boolean'}, 'hasCustomPolygonConversion': {'type': 'boolean'}, 'showConversionMaximumRadiusAlert': {'type': 'boolean'}, 'maximumRadius': {'type': 'integer'}, 'geofenceInputLabel': {'type': 'string'}, 'geofenceInputEditable': {'type': 'boolean'}, 'maximumAllowedZips': {'type': 'integer'}, 'showImage': {'type': 'boolean'}, 'targetingImgPath': {'type': 'string'}, 'conversionImgPath': {'type': 'string'}}, 'additionalProperties': False}" WHERE id = 24; 
UPDATE widgets SET schema_json = "{'$schema': 'http://json-schema.org/draft-07/schema#', 'type': 'object', 'properties': {'label': {'type': 'string'}, 'categoryGrouping': {'type': 'boolean'}}, 'additionalProperties': False}" WHERE id = 30; 
UPDATE widgets SET schema_json = "{'$schema': 'http://json-schema.org/draft-07/schema#', 'type': 'object', 'properties': {'label': {'type': 'string'}, 'collation': {'type': 'object', 'properties': {'enabled': {'type': 'boolean'}}, 'required': ['enabled'], 'additionalProperties': False}, 'defaultRadius': {'type': 'integer'}, 'minimumRadius': {'type': 'integer'}, 'radiusOptions': {'type': 'array', 'items': {'type': 'object', 'properties': {'text': {'type': 'string'}, 'value': {'type': 'string'}}, 'required': ['text', 'value'], 'additionalProperties': False}}, 'showCardLabel': {'type': 'boolean'}, 'conversionType': {'type': 'string'}, 'conversionLabel': {'type': 'string'}, 'hasOfflineVisits': {'type': 'boolean'}, 'defaultRadiusType': {'type': 'string'}, 'hasAttributionIcon': {'type': 'boolean'}, 'hasConversionField': {'type': 'boolean'}, 'showMaximumRadiusAlert': {'type': 'boolean'}, 'conversionDefaultRadius': {'type': 'integer'}, 'conversionMaximumRadius': {'type': 'integer'}, 'conversionMinimumRadius': {'type': 'integer'}, 'conversionRadiusDefaults': {'type': 'boolean'}, 'hasCustomPolygonConversion': {'type': 'boolean'}, 'showConversionMaximumRadiusAlert': {'type': 'boolean'}, 'targetingImgPath': {'type': 'string'}, 'conversionImgPath': {'type': 'string'}}, 'required': ['collation', 'conversionLabel', 'defaultRadiusType', 'hasAttributionIcon', 'radiusOptions', 'showCardLabel'], 'additionalProperties': False}" WHERE id = 31; 
UPDATE widgets SET schema_json = "{'$schema': 'http://json-schema.org/draft-07/schema#', 'type': 'object', 'properties': {'label': {'type': 'string'}, 'displayName': {'type': 'string'}, 'conversionDefaultRadius': {'type': 'integer'}, 'conversionMaximumRadius': {'type': 'integer'}, 'conversionMinimumRadius': {'type': 'integer'}, 'conversionRadiusDefaults': {'type': 'boolean'}, 'hasCustomPolygonConversion': {'type': 'boolean'}, 'showConversionMaximumRadiusAlert': {'type': 'boolean'}, 'required': {'type': 'object', 'properties': {'text': {'type': 'string'}, 'isRequired': {'type': 'boolean'}}, 'required': ['isRequired', 'text'], 'additionalProperties': False}, 'hasGroupedProductLabel': {'type': 'boolean'}}, 'additionalProperties': False}" WHERE id = 32; 
UPDATE widgets SET schema_json = "{'$schema': 'http://json-schema.org/draft-07/schema#', 'type': 'object', 'properties': {'label': {'type': 'string'}, 'layout': {'type': 'string'}, 'options': {'type': 'object', 'properties': {'autoSave': {'type': 'string'}, 'showLabel': {'type': 'boolean'}, 'showProductSummary': {'type': 'boolean'}}, 'required': ['autoSave', 'showLabel', 'showProductSummary'], 'additionalProperties': False}, 'collation': {'type': 'object', 'properties': {'level': {'type': 'string'}, 'enabled': {'type': 'boolean'}}, 'required': ['enabled'], 'additionalProperties': False}, 'displayName': {'type': 'string'}, 'expandSidePanel': {'type': 'boolean'}, 'conversionDefaultRadius': {'type': 'integer'}, 'conversionMaximumRadius': {'type': 'integer'}, 'conversionMinimumRadius': {'type': 'integer'}, 'conversionRadiusDefaults': {'type': 'boolean'}, 'hasCustomPolygonConversion': {'type': 'boolean'}, 'showConversionMaximumRadiusAlert': {'type': 'boolean'}, 'layoutMode': {'type': 'string'}, 'enableClusterMode': {'type': 'boolean'}, 'clusterModeZoomLevel': {'type': 'integer'}, 'required': {'type': 'object', 'properties': {'text': {'type': 'string'}, 'isRequired': {'type': 'boolean'}}, 'required': ['isRequired', 'text'], 'additionalProperties': False}, 'readOnly': {'type': 'boolean'}, 'showCardLabel': {'type': 'boolean'}, 'conversionType': {'type': 'string'}, 'conversionLabel': {'type': 'string'}, 'hasOfflineVisits': {'type': 'boolean'}, 'defaultRadiusType': {'type': 'string'}, 'hasAttributionIcon': {'type': 'boolean'}, 'hasConversionField': {'type': 'boolean'}, 'showMaximumRadiusAlert': {'type': 'boolean'}, 'hideHeader': {'type': 'boolean'}, 'hasGroupedProductLabel': {'type': 'boolean'}, 'isOuterHeaderHidden': {'type': 'boolean'}, 'layoutStyleConfig': {'type': 'object', 'properties': {'container': {'type': 'object', 'properties': {'padding': {'type': 'integer'}, 'marginTop': {'type': 'string'}, 'height': {'type': 'string'}}, 'required': ['height', 'marginTop', 'padding'], 'additionalProperties': False}, 'card': {'type': 'object', 'properties': {'position': {'type': 'string'}, 'top': {'type': 'string'}, 'left': {'type': 'string'}, 'width': {'type': 'string'}, 'height': {'type': 'string'}, 'margin': {'type': 'integer'}, 'padding': {'type': 'integer'}, 'maxWidth': {'type': 'string'}, 'header': {'type': 'object', 'properties': {'position': {'type': 'string'}, 'width': {'type': 'string'}, 'margin': {'type': 'string'}, 'z-index': {'type': 'string'}}, 'required': ['margin', 'position', 'width', 'z-index'], 'additionalProperties': False}}, 'required': ['height', 'left', 'margin', 'maxWidth', 'padding', 'position', 'top', 'width'], 'additionalProperties': False}, 'cardContent': {'type': 'object', 'properties': {'padding': {'type': 'integer'}, 'margin': {'type': 'integer'}}, 'required': ['margin', 'padding'], 'additionalProperties': False}, 'widgetContainer': {'type': 'object', 'properties': {'top': {'type': 'string'}, 'left': {'type': 'string'}, 'height': {'type': 'string'}, 'width': {'type': 'string'}, 'background': {'type': 'string'}, 'maxHeight': {'type': 'string'}, 'moreBtnPositonTop': {'type': 'string'}}, 'required': ['background', 'height', 'left', 'top', 'width'], 'additionalProperties': False}}, 'required': ['card', 'cardContent', 'container', 'widgetContainer'], 'additionalProperties': False}, 'defaultRadius': {'type': 'integer'}, 'minimumRadius': {'type': 'integer'}, 'radiusOptions': {'type': 'array', 'items': {'type': 'object', 'properties': {'text': {'type': 'string'}, 'value': {'type': 'string'}}, 'required': ['text', 'value'], 'additionalProperties': False}}}, 'additionalProperties': False}" WHERE id = 33; 
UPDATE widgets SET schema_json = "{'$schema': 'http://json-schema.org/draft-07/schema#', 'type': 'object', 'properties': {'label': {'type': 'string'}, 'presentationLayer': {'type': 'string'}, 'hasTailwindCSS': {'type': 'boolean'}}, 'additionalProperties': False}" WHERE id = 34; 
UPDATE widgets SET schema_json = "{'$schema': 'http://json-schema.org/draft-07/schema#'}" WHERE id = 35; 
UPDATE widgets SET schema_json = "{'$schema': 'http://json-schema.org/draft-07/schema#', 'type': 'object', 'properties': {'sortProducts': {'type': 'array', 'items': {'type': 'string'}}, 'conversionDefaultRadius': {'type': 'integer'}, 'conversionMaximumRadius': {'type': 'integer'}, 'conversionMinimumRadius': {'type': 'integer'}, 'conversionRadiusDefaults': {'type': 'boolean'}, 'hasCustomPolygonConversion': {'type': 'boolean'}, 'showConversionMaximumRadiusAlert': {'type': 'boolean'}, 'required': {'type': 'object', 'properties': {'text': {'type': 'string'}, 'isRequired': {'type': 'boolean'}}, 'required': ['isRequired', 'text'], 'additionalProperties': False}, 'productImage': {'type': 'string'}, 'label': {'type': 'string'}, 'showImage': {'type': 'boolean'}, 'hasGroupedWideListLabel': {'type': 'boolean'}}, 'additionalProperties': False}" WHERE id = 36; 
UPDATE widgets SET schema_json = "{'$schema': 'http://json-schema.org/draft-07/schema#', 'type': 'object', 'properties': {'label': {'type': 'string'}, 'conversionDefaultRadius': {'type': 'integer'}, 'conversionMaximumRadius': {'type': 'integer'}, 'conversionMinimumRadius': {'type': 'integer'}, 'conversionRadiusDefaults': {'type': 'boolean'}, 'hasCustomPolygonConversion': {'type': 'boolean'}, 'showConversionMaximumRadiusAlert': {'type': 'boolean'}, 'showInfoIcon': {'type': 'boolean'}, 'tooltipText': {'type': 'string'}, 'layoutStyleConfig': {'type': 'object', 'properties': {'card': {'type': 'object', 'properties': {'header': {'type': 'object', 'properties': {'height': {'type': 'string'}, 'lineHeight': {'type': 'string'}}, 'required': ['height', 'lineHeight'], 'additionalProperties': False}}, 'required': ['header'], 'additionalProperties': False}}, 'required': ['card'], 'additionalProperties': False}}, 'additionalProperties': False}" WHERE id = 37; 
UPDATE widgets SET schema_json = "{'$schema': 'http://json-schema.org/draft-07/schema#', 'type': 'object', 'properties': {'label': {'type': 'string'}, 'conversionDefaultRadius': {'type': 'integer'}, 'conversionMaximumRadius': {'type': 'integer'}, 'conversionMinimumRadius': {'type': 'integer'}, 'conversionRadiusDefaults': {'type': 'boolean'}, 'hasCustomPolygonConversion': {'type': 'boolean'}, 'showConversionMaximumRadiusAlert': {'type': 'boolean'}}, 'required': ['label'], 'additionalProperties': False}" WHERE id = 38; 
UPDATE widgets SET schema_json = "{'$schema': 'http://json-schema.org/draft-07/schema#', 'type': 'object', 'properties': {'label': {'type': 'string'}, 'conversionDefaultRadius': {'type': 'integer'}, 'conversionMaximumRadius': {'type': 'integer'}, 'conversionMinimumRadius': {'type': 'integer'}, 'conversionRadiusDefaults': {'type': 'boolean'}, 'hasCustomPolygonConversion': {'type': 'boolean'}, 'showConversionMaximumRadiusAlert': {'type': 'boolean'}}, 'required': ['label'], 'additionalProperties': False}" WHERE id = 39; 
UPDATE widgets SET schema_json = "{'$schema': 'http://json-schema.org/draft-07/schema#', 'type': 'object', 'properties': {'label': {'type': 'string'}, 'isOuterHeaderHidden': {'type': 'boolean'}, 'layoutStyleConfig': {'type': 'object', 'properties': {'container': {'type': 'object', 'properties': {'padding': {'type': 'integer'}, 'marginTop': {'type': 'string'}, 'height': {'type': 'string'}}, 'required': ['height', 'marginTop', 'padding'], 'additionalProperties': False}, 'card': {'type': 'object', 'properties': {'position': {'type': 'string'}, 'top': {'type': 'string'}, 'left': {'type': 'string'}, 'width': {'type': 'string'}, 'height': {'type': 'string'}, 'margin': {'type': 'integer'}, 'padding': {'type': 'integer'}, 'maxWidth': {'type': 'string'}}, 'required': ['height', 'left', 'margin', 'maxWidth', 'padding', 'position', 'top', 'width'], 'additionalProperties': False}, 'cardContent': {'type': 'object', 'properties': {'padding': {'type': 'integer'}, 'margin': {'type': 'integer'}}, 'required': ['margin', 'padding'], 'additionalProperties': False}, 'widgetContainer': {'type': 'object', 'properties': {'top': {'type': 'string'}, 'left': {'type': 'string'}, 'height': {'type': 'string'}, 'width': {'type': 'string'}, 'background': {'type': 'string'}}, 'required': ['background', 'height', 'left', 'top', 'width'], 'additionalProperties': False}}, 'required': ['card', 'cardContent', 'container', 'widgetContainer'], 'additionalProperties': False}, 'hasSaveAndExitInPreview': {'type': 'boolean'}}, 'required': ['isOuterHeaderHidden', 'layoutStyleConfig'], 'additionalProperties': False}" WHERE id = 40; 
UPDATE widgets SET schema_json = "{'$schema': 'http://json-schema.org/draft-07/schema#', 'type': 'object', 'properties': {'note': {'type': 'string'}, 'label': {'type': 'string'}, 'displayName': {'type': 'string'}, 'hasGroupedProductLabel': {'type': 'boolean'}, 'conversionDefaultRadius': {'type': 'integer'}, 'conversionMaximumRadius': {'type': 'integer'}, 'conversionMinimumRadius': {'type': 'integer'}, 'conversionRadiusDefaults': {'type': 'boolean'}, 'hasCustomPolygonConversion': {'type': 'boolean'}, 'showConversionMaximumRadiusAlert': {'type': 'boolean'}, 'layoutStyleConfig': {'type': 'object', 'properties': {'card': {'type': 'object', 'properties': {'header': {'type': 'object', 'properties': {'height': {'type': 'string'}, 'margin': {'type': 'string'}}, 'required': ['height', 'margin'], 'additionalProperties': False}}, 'required': ['header'], 'additionalProperties': False}}, 'required': ['card'], 'additionalProperties': False}, 'hasTailwindCSS': {'type': 'boolean'}}, 'additionalProperties': False}" WHERE id = 41; 
UPDATE widgets SET schema_json = "{'$schema': 'http://json-schema.org/draft-07/schema#', 'type': 'object', 'properties': {'options': {'type': 'object', 'properties': {'autoSave': {'type': 'string'}, 'showLabel': {'type': 'boolean'}, 'showProductSummary': {'type': 'boolean'}}, 'required': ['autoSave', 'showLabel', 'showProductSummary'], 'additionalProperties': False}, 'collation': {'type': 'object', 'properties': {'enabled': {'type': 'boolean'}, 'level': {'type': 'string'}}, 'required': ['enabled', 'level'], 'additionalProperties': False}, 'networks': {'type': 'object', 'properties': {'maxSelection': {'type': 'integer'}, 'minSelection': {'type': 'integer'}}, 'required': ['maxSelection', 'minSelection'], 'additionalProperties': False}, 'required': {'type': 'object', 'properties': {'text': {'type': 'string'}, 'isRequired': {'type': 'boolean'}}, 'required': ['isRequired', 'text'], 'additionalProperties': False}, 'widgetDescription': {'type': 'string'}, 'label': {'type': 'string'}}, 'required': ['collation', 'networks', 'options', 'required'], 'additionalProperties': False}" WHERE id = 42; 
UPDATE widgets SET schema_json = "{'$schema': 'http://json-schema.org/draft-07/schema#', 'type': 'object', 'properties': {'label': {'type': 'string'}, 'infoMessage': {'type': 'string'}}, 'required': ['infoMessage', 'label'], 'additionalProperties': False}" WHERE id = 43; 
UPDATE widgets SET schema_json = "{'$schema': 'http://json-schema.org/draft-07/schema#', 'type': 'object', 'properties': {'label': {'type': 'string'}, 'required': {'type': 'object', 'properties': {'text': {'type': 'string'}, 'isRequired': {'type': 'boolean'}}, 'required': ['isRequired', 'text'], 'additionalProperties': False}}, 'required': ['label', 'required'], 'additionalProperties': False}" WHERE id = 44; 
UPDATE widgets SET schema_json = "{'$schema': 'http://json-schema.org/draft-07/schema#', 'type': 'object', 'properties': {'required': {'type': 'object', 'properties': {'text': {'type': 'string'}, 'isRequired': {'type': 'boolean'}}, 'required': ['isRequired', 'text'], 'additionalProperties': False}, 'validations': {'type': 'array', 'items': {'type': 'object', 'properties': {'type': {'type': 'string'}, 'message': {'type': 'string'}}, 'required': ['message', 'type'], 'additionalProperties': False}}, 'label': {'type': 'string'}, 'showImage': {'type': 'boolean'}}, 'required': ['required'], 'additionalProperties': False}" WHERE id = 45; 
UPDATE widgets SET schema_json = "{'$schema': 'http://json-schema.org/draft-07/schema#', 'type': 'object', 'properties': {'label': {'type': 'string'}, 'showImage': {'type': 'boolean'}}, 'additionalProperties': False}" WHERE id = 46; 
UPDATE widgets SET schema_json = "{'$schema': 'http://json-schema.org/draft-07/schema#', 'type': 'object', 'properties': {'required': {'type': 'object', 'properties': {'text': {'type': 'string'}, 'isRequired': {'type': 'boolean'}}, 'required': ['isRequired', 'text'], 'additionalProperties': False}, 'dependentStrategyWidgetId': {'type': 'string'}, 'label': {'type': 'string'}, 'showImage': {'type': 'boolean'}}, 'required': ['dependentStrategyWidgetId', 'required'], 'additionalProperties': False}" WHERE id = 47; 
UPDATE widgets SET schema_json = "{'$schema': 'http://json-schema.org/draft-07/schema#', 'type': 'object', 'properties': {'required': {'type': 'object', 'properties': {'text': {'type': 'string'}, 'isRequired': {'type': 'boolean'}}, 'required': ['isRequired', 'text'], 'additionalProperties': False}, 'dependentStrategyWidgetId': {'type': 'string'}, 'label': {'type': 'string'}, 'showImage': {'type': 'boolean'}, 'conversionDefaultRadius': {'type': 'integer'}, 'conversionMaximumRadius': {'type': 'integer'}, 'conversionMinimumRadius': {'type': 'integer'}, 'conversionRadiusDefaults': {'type': 'boolean'}, 'hasCustomPolygonConversion': {'type': 'boolean'}, 'showConversionMaximumRadiusAlert': {'type': 'boolean'}}, 'required': ['dependentStrategyWidgetId', 'required'], 'additionalProperties': False}" WHERE id = 48; 
UPDATE widgets SET schema_json = "{'$schema': 'http://json-schema.org/draft-07/schema#', 'type': 'object', 'properties': {'label': {'type': 'string'}}, 'required': ['label'], 'additionalProperties': False}" WHERE id = 49; 
UPDATE widgets SET schema_json = "{'$schema': 'http://json-schema.org/draft-07/schema#', 'type': 'object', 'properties': {'configuration': {'type': 'object', 'properties': {'requirements': {'type': 'object', 'properties': {'duration': {'type': 'integer'}, 'budgetType': {'type': 'string'}, 'budgetTypes': {'type': 'array', 'items': {'type': 'object', 'properties': {'id': {'type': 'string'}, 'name': {'type': 'string'}}, 'required': ['id', 'name'], 'additionalProperties': False}}}, 'required': ['budgetType', 'budgetTypes', 'duration'], 'additionalProperties': False}}, 'required': ['requirements'], 'additionalProperties': False}}, 'required': ['configuration'], 'additionalProperties': False}" WHERE id = 51; 
UPDATE widgets SET schema_json = "{'$schema': 'http://json-schema.org/draft-07/schema#', 'type': 'object', 'properties': {'id': {'type': 'string'}}, 'required': ['id'], 'additionalProperties': False}" WHERE id = 52; 
UPDATE widgets SET schema_json = "{'$schema': 'http://json-schema.org/draft-07/schema#'}" WHERE id = 53; 
UPDATE widgets SET schema_json = "{'$schema': 'http://json-schema.org/draft-07/schema#', 'type': 'object', 'properties': {'layoutStyleConfig': {'type': 'object', 'properties': {'cardContent': {'type': 'object', 'properties': {'margin': {'type': 'integer'}}, 'required': ['margin'], 'additionalProperties': False}}, 'required': ['cardContent'], 'additionalProperties': False}}, 'required': ['layoutStyleConfig'], 'additionalProperties': False}" WHERE id = 54; 
UPDATE widgets SET schema_json = "{'$schema': 'http://json-schema.org/draft-07/schema#', 'type': 'object', 'properties': {'fetchInstancesByProducts': {'type': 'boolean'}, 'fetchDataBasedOnAttributeKeysMappings': {'type': 'boolean'}}, 'required': ['fetchInstancesByProducts'], 'additionalProperties': False}" WHERE id = 55; 
UPDATE widgets SET schema_json = "{'$schema': 'http://json-schema.org/draft-07/schema#', 'type': 'object', 'properties': {'required': {'type': 'object', 'properties': {'text': {'type': 'string'}, 'isRequired': {'type': 'boolean'}}, 'required': ['isRequired', 'text'], 'additionalProperties': False}}, 'required': ['required'], 'additionalProperties': False}" WHERE id = 56; 
UPDATE widgets SET schema_json = "{'$schema': 'http://json-schema.org/draft-07/schema#', 'type': 'object', 'properties': {'required': {'type': 'object', 'properties': {'text': {'type': 'string'}, 'isRequired': {'type': 'boolean'}}, 'required': ['isRequired', 'text'], 'additionalProperties': False}}, 'required': ['required'], 'additionalProperties': False}" WHERE id = 57; 
UPDATE widgets SET schema_json = "{'$schema': 'http://json-schema.org/draft-07/schema#', 'type': 'object', 'properties': {'isHeaderHidden': {'type': 'boolean'}}, 'required': ['isHeaderHidden'], 'additionalProperties': False}" WHERE id = 58; 
UPDATE widgets SET schema_json = "{'$schema': 'http://json-schema.org/draft-07/schema#', 'type': 'object', 'properties': {'required': {'type': 'object', 'properties': {'isRequired': {'type': 'boolean'}, 'text': {'type': 'string'}}, 'required': ['isRequired', 'text'], 'additionalProperties': False}}, 'required': ['required'], 'additionalProperties': False}" WHERE id = 59; 
UPDATE widgets SET schema_json = "{'$schema': 'http://json-schema.org/draft-07/schema#', 'type': 'object', 'properties': {'calculationModel': {'type': 'string'}, 'showFlightTacticEditModal': {'type': 'boolean'}, 'showFlightBudgetImpressionsToggle': {'type': 'boolean'}, 'disableRealizedData': {'type': 'boolean'}}, 'required': ['calculationModel'], 'additionalProperties': False}" WHERE id = 60; 
UPDATE widgets SET schema_json = "{'$schema': 'http://json-schema.org/draft-07/schema#'}" WHERE id = 61; 
UPDATE widgets SET schema_json = "{'$schema': 'http://json-schema.org/draft-07/schema#', 'type': 'object', 'properties': {'maxInstances': {'type': 'integer'}, 'customPositionForWidget': {'type': 'boolean'}}, 'required': ['maxInstances'], 'additionalProperties': False}" WHERE id = 62; 
UPDATE widgets SET schema_json = "{'$schema': 'http://json-schema.org/draft-07/schema#', 'type': 'object', 'properties': {'isHeaderHidden': {'type': 'boolean'}, 'noSelfProducts': {'type': 'array', 'items': {'type': 'string'}}}, 'required': ['isHeaderHidden'], 'additionalProperties': False}" WHERE id = 63; 
UPDATE widgets SET schema_json = "{'$schema': 'http://json-schema.org/draft-07/schema#', 'type': 'object', 'properties': {'label': {'type': 'string'}}, 'required': ['label'], 'additionalProperties': False}" WHERE id = 64; 
UPDATE widgets SET schema_json = "{'$schema': 'http://json-schema.org/draft-07/schema#'}" WHERE id = 65; 
UPDATE widgets SET schema_json = "{'$schema': 'http://json-schema.org/draft-07/schema#'}" WHERE id = 66; 
UPDATE widgets SET schema_json = "{'$schema': 'http://json-schema.org/draft-07/schema#'}" WHERE id = 67; 
UPDATE widgets SET schema_json = "{'$schema': 'http://json-schema.org/draft-07/schema#'}" WHERE id = 68; 
UPDATE widgets SET schema_json = "{'$schema': 'http://json-schema.org/draft-07/schema#'}" WHERE id = 69; 
UPDATE widgets SET schema_json = "{'$schema': 'http://json-schema.org/draft-07/schema#', 'type': 'object', 'properties': {'layoutStyleConfig': {'type': 'object', 'properties': {'cardContent': {'type': 'object', 'properties': {'margin': {'type': 'integer'}}, 'required': ['margin'], 'additionalProperties': False}}, 'required': ['cardContent'], 'additionalProperties': False}}, 'required': ['layoutStyleConfig'], 'additionalProperties': False}" WHERE id = 70; 
UPDATE widgets SET schema_json = "{'$schema': 'http://json-schema.org/draft-07/schema#'}" WHERE id = 71; 
