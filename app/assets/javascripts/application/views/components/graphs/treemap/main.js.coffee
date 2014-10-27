App.View.extend
  name: "components/graphs/treemap/main"
  showing: true
  _width: 500
  _height: 500
  _legendHeight: 0
  _percentWidth: 100
  _pixelWidth: 0
  template: () -> "<div class='vis-treemap'></div>"

  acceptedTypes: [ "number", "string", "Date:Moment", "Date:Date" ]
  events:
    'resize': '_onResize'
    'ready': '_onReady'

  initialize: () ->

    _.bindAll @, "postInitialize", "_onReady", "_onResize", "onResize", "updateView", "doChart", "doDataDisplay", "createChart", "clearChart"

    $(window).on "resize", @._onResize

    @.setConfigOptions()

    @.setData()

    @.postInitialize()

    @

  postInitialize: () ->


  _onReady: () ->
    _.defer () =>
      @._percentWidth = 100 - ( ( @.dataConfig.get("margin").left + @.dataConfig.get("margin").right) / @.$el.width() ) * 100

      @._pixelWidth = @.$el.width() * ( @._percentWidth / 100 )
      # @._pixelWidth = elem.width()
      @.doChart()
      # @.drawXAxis()


  _onResize: () ->
    @._percentWidth = 100 - ( ( @.dataConfig.get("margin").left + @.dataConfig.get("margin").right) / @.$el.width() ) * 100

    @._pixelWidth = @.$el.width() * ( @._percentWidth / 100 )
    # @._pixelWidth = elem.width()
    # @.drawXAxis()
    # @.onResize()
    @.doChart()

  onResize: () ->


  updateView: (e) ->
    @._parseData()
    @.doChart()

  setConfigOptions: () ->
    # @.dataConfig = @.data.get("dataConfig")

    if !_.isUndefined( @.dataConfig ) and !_.isNull( @.dataConfig )
      if @._isConfigValid()

        @.listenTo @.dataConfig, "change", @.updateView

      # Config not valid
      else
        throw "#{@.name}: Config Error: config model requires #{@.required_attrs.toString()}"

    # Error if no config model
    else
      throw "#{@.name}: Config Error: config model is #{config}."

  _isConfigValid: () ->

    true

  ###
  Data Configuration Functions
  ###

  setData: () ->

    # @.dataCollection = @.data.get "dataCollection"

    if !_.isUndefined( @.dataCollection ) and !_.isNull( @.dataCollection )

      @._parseData()

      # If dataCollection changes then re-parse the dataCollection
      @.listenTo @.dataCollection, "add remove reset sort", @.updateView
      window.col = @.dataCollection

    # Error if no collection
    else
      throw "#{@.name}: Collection Error: data collection is #{collection}."

  _parseData: () ->


  _detectDataType: ( axis ) ->

    values = @[axis]

    # Grab all the types of the data
    types = _.map values, (val) ->
      type = typeof val

      if _.isEqual( type, "object" )

        if val._isAMomentObject
          type = "Date:Moment"

        else if val instanceof Date
          type = "Date:Date"

      type

    # Remove duplicate types
    types = _.uniq types

    # Check that only one type exists
    if _.isEqual( types.length, 1 )
      type =  types[0]

      @._convertData axis, type

      # Check that an acceptable data type is found
      if _.contains( @.acceptedTypes, type )
        if _.isEqual( axis, "xAxisData" )
          @.xAxisType = type
        else
          @.yAxisType = type

        @._isHomogeneous = true

      # Error if data type is not supported
      else
        @._isHomogeneous = false
        throw "#{@.name}: Data Type Error: #{axis} axis with data type #{type} is not an acceptable data type."

    # Error if axis data is not homogeneous
    else
      @._isHomogeneous = false
      throw "#{@.name}: Data Type Error: #{axis} axis is not a homogeneous data type."

  _convertData: ( axis, type ) ->
    data = @[axis]
    newData = []

    if _.isEqual( type, "Date:Moment" ) or _.isEqual( type, "Date:Date" )

      _.each data, ( d, index ) ->
        newData.push d.valueOf()

      @[axis] = newData


  ###
  Chart Configuring and Drawing Function
  ###

  doChart: () ->

    @.clearChart()

    @.chart = @.createChart()

    @.doDataDisplay()

  doDataDisplay: () ->

  createChart: () ->
    # Only get the chart element for this view
    elem = @.$el.find(".vis-treemap")

    treemap = d3.layout.treemap()
      .size [@._width, @._height]
      .sticky true
      .value (d) -> 
        d.size

    div = d3.select(elem[0]).append("div")
      .style "position", "relative"
      .style "width", "#{@._width + @.dataConfig.get('margin').left + @.dataConfig.get('margin').right}px"
      .style "heigth", "#{@._height + @.dataConfig.get('margin').top + @.dataConfig.get('margin').bottom}px"
      .style "left", "#{@.dataConfig.get('margin').left}px"
      .style "top", "#{@.dataConfig.get('margin').top}px"

    window.treemap = treemap

    # Apply width. If legend is true, draw it
    # Height includes chart height, top margin, and legend height
    # Then apply a chart wrapper for transforming the chart (not including the legend)
    # chart = d3.select elem[0]
    #   .attr "width", "100%"
    #   .call if @.dataConfig.get("legend") then @.drawLegend else () -> null
    #   .attr "height", @.dataConfig.get("height") + @.dataConfig.get("margin").top + @.dataConfig.get("margin").bottom + @._legendHeight
    # .append "g"
    #   .attr "class", "chart_wrapper"
    #   .attr "transform", "translate(#{@.dataConfig.get('margin').left}, #{@.dataConfig.get('margin').top + @._legendHeight})"
    # chart


  clearChart: () ->
    elem = @.$el.find(".vis-chart")[0]
    $(elem).children().remove()