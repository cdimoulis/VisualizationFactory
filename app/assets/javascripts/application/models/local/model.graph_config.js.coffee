App.Model.extend
  name: 'GraphConfig'

  _attributes: ['height', 'xAxisPos', 'yAxisPos', 'xLabel', 'yLabel', 'margin', 'xKey', 'yKey', 'group', 'color', 'groupColor', 'size', 'xFormat', 'yFormat', 'xDomain', 'yDomain', 'legend', 'controls', "linePoints", 'gridLines', 'xRotate', 'tooltip']
  _descriptions:
    'height': "Type: NUMBER. The height of the graph."
    'margin': "Type: OBJECT. The top, right, left, bottom margins."
    'xKey': "Type: STRING. Key for x values in graph's dataCollection."
    'yKey': "Type: STRING. Key for y values in graph's dataCollection."
    'group': "Type: FUNCTION(string). Return the name of the group. Used for legend and multi-bar grouping."
    'color': "Type: FUNCTION(color i.e. hex, rgb, name). Used to determing data point color. Will be passed model from the graph's dataCollection. DEFAULTS TO GROUP COLOR"
    'groupColor': "Type: FUNCTION(color i.e. hex, rgb, name). Determines the color for groups of "
    'size': "Type: FUNCTION(number). Used to determining data point size. Will be passed model from the graph's dataCollection."
    'xFormat': "Type: FUNCTION(string). Used to determine the display format of the x axis points. Will be passed the x value."
    'yFormat': "Type: FUNCTION(string). Used to determine the display format of the y axis points. Will be passed the y value."
    'xDomain': "Type: FUNCTION(list). Data collection will be passed. Used to determine axis min and max. Min = xDomain[0], Max= xDomain[1]."
    'yDomain': "Type: FUNCTION(list). Data collection will be passed. Used to determine axis min and max. Min = yDomain[0], Max= yDomain[1]."
    'xAxisPos': "Type: STRING. The positiong of the x Axis. left, right, top, bottom."
    'yAxisPos': "Type: STRING. The positiong of the y Axis. left, right, top, bottom."
    'xLabel': "Type: FUNCTION(string). Returns a string of the x axis label."
    'yLabel': "Type: FUNCTION(string). Returns a string of the y axis label."
    'legend': "Type: BOOLEAN. True to show legend, false for no legend."
    'controls': "Type: BOOLEAN. True to show controls if chart has any. false for no controls."
    'linePoints': "Type: BOOLEAN. Used for line graph. True to show circle at data points."
    'gridLines': "Type: BOOLEAN. True to show grid lines, false for no grid lines."
    'xRotate': "Type NUMBER: Degrees from 0 - 90 for rotation of x axis labels"
    'tooltip': "Type FUNCTION(string): Returns the html for the tooltip."

  _defaults:
    'height': 400
    'margin':
      "top": 50
      "right": 10
      "bottom": 50
      "left": 50
    'xKey': "key"
    'yKey': "value"
    'group': (model) -> 'A'
    'groupColor': (group) -> 'steelblue'
    'color': (collection, model) ->
      'steelblue' # This is replaced to point to group color on initialize
    'size': ( model ) ->
      7
    'xFormat': (x) -> x
    'yFormat': (y) -> y
    'xDomain': null
    'yDomain': null
    'xAxisPos': "bottom"
    'yAxisPos': "left"
    'xLabel': (xKey) -> xKey.capitalize()
    'yLabel': (yKey) -> yKey.capitalize()
    'legend': true
    'controls': true
    'linePoints': true
    'gridLines': true
    'xRotate': 0
    'tooltip': (collection, model, data) ->
        ""

  initialize: () ->
    @._defaults[ 'color' ] = (collection, model, index) =>
      @.get("groupColor") @.get("group")( model )

    missingAttributes = _.difference @._attributes, _.keys(@.attributes) 
    _.each missingAttributes, (element, index, list) =>
      @.set element, @._defaults[element]

    @
