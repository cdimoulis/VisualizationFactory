App.Model.extend
  name: 'GraphConfig'

  _attributes: ['height', 'xAxisPos', 'yAxisPos', 'margin', 'xKey', 'yKey', 'color', 'size', 'xFormat', 'yFormat']
  _descriptions:
    'height': "Type: NUMBER. The height of the graph."
    'xAxisPos': "Type: STRING. The positiong of the x Axis. left, right, top, bottom."
    'yAxisPos': "Type: STRING. The positiong of the y Axis. left, right, top, bottom."
    'margin': "Type: OBJECT. The top, right, left, bottom margins."
    'xKey': "Type: STRING. Key for x values in graph's dataCollection."
    'yKey': "Type: STRING. Key for y values in graph's dataCollection."
    'color': "Type: FUNCTION. Used to determing data point color. Will be passed model from the graph's dataCollection."
    'size': "Type: FUNCTION. Used to determining data point size. Will be passed model from the graph's dataCollection."
    'xFormat': "Type: FUNCTION. Used to determine the display format of the x axis points. Will be passed the x value."
    'yFormat': "Type: FUNCTION. Used to determine the display format of the y axis points. Will be passed the y value."

  _defaults:
    'height': 400
    'xAxisPos': "bottom"
    'yAxisPos': "left"
    'margin':
      "top": 50
      "right": 10
      "bottom": 50
      "left": 50
    'xKey': null
    'yKey': null
    'color': (collection, model, index) -> 'steelblue'
    'size': null
    'xFormat': (x) -> x
    'yFormat': (y) -> y

  initialize: () ->

    missingAttributes = _.difference @._attributes, _.keys(@.attributes) 
    _.each missingAttributes, (element, index, list) =>
      @.set element, @._defaults[element]

    @
