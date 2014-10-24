App.View.extend
  name: "abstract/graph"
  showing: true
  _legendHeight: 0
  _percentWidth: 100
  _pixelWidth: 0
  template: () -> "<svg class='vis-chart'></svg>"

  acceptedTypes: [ "number", "string", "Date:Moment", "Date:Date" ]
  events:
    'resize': '_onResize'
    'ready': '_onReady'

  initialize: () ->

    _.bindAll @, "postInitialize", "_onReady", "_onResize", "onResize", "updateView", "doChart", "doDataDisplay", "setConfigOptions", "_isConfigValid", "setData", "_parseData", "_detectDataType", "_convertData", "isDataValid", "isDataEmpty", "setAxisRange", "setAxisDomain", "createChart", "drawXAxis", "drawYAxis", "drawLegend", "_legend", "_positionLegend", "clearChart"

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

    valid = true

    _.each @.required_attrs, (r) =>
      if _.isUndefined( @.dataConfig.get r ) or _.isNull( @.dataConfig.get r )
        valid = false

    valid

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

    @.xAxisData = @.dataCollection.pluck @.dataConfig.get("xKey")
    if !_.isEqual( @.xAxisData.length, 0 )
      @._detectDataType "xAxisData"

    @.yAxisData = @.dataCollection.pluck @.dataConfig.get("yKey")
    if !_.isEqual(  @.yAxisData.length, 0 )
      @._detectDataType "yAxisData"

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

  isDataValid: () ->
    if @._isHomogeneous and !_.isUndefined( @.xAxisData  ) and !_.isUndefined( @.yAxisData )

      if _.isEqual( @.xAxisData.length, @.yAxisData.length )
        return true

    false

  isDataEmpty: () ->
    !@.isDataValid() and !_.isEqual( @.xAxisData.length, 0 ) and !_.isEqual( @.yAxisData.length, 0 )


  ###
  Chart Configuring and Drawing Function
  ###

  doChart: () ->

    @.clearChart()

    if @.isDataValid()  and !@.isDataEmpty()

      @.chart = @.createChart()

      @.setAxisRange "x"
      @.setAxisRange "y"

      @.setAxisDomain "x"
      @.setAxisDomain "y"

      @.drawXAxis()
      @.drawYAxis()

      @.doDataDisplay()

    else

      if @.isDataEmpty()
        throw "#{@.name}: data is empty."
      else
        throw "#{@.name}: data is not valid."

    @.$el.html()

  doDataDisplay: () ->

  setAxisRange: ( axis ) ->

    # Determine domain and range based on axis type
    if _.isEqual( axis, "y" )
      range = [@.dataConfig.get("height"), 0]

      # Ordinal scale for strings
      if _.isEqual( @.yAxisType, "string" )
        @.y = d3.scale.ordinal()
          .rangeBands range

      # Linear scale for numbers or dates
      else if _.isEqual( @.yAxisType, "number" ) or _.isEqual( @.yAxisType, "Date:Moment" ) or _.isEqual( @.yAxisType, "Date:Date" )
        @.y = d3.scale.linear()
          .range range
    
      else
        type = @.yAxisType
        throw "#{@.name}: #{axis} axis invalid data type of #{type}."

    else
      range = [0, @._percentWidth]

      @.x = d3.scale.ordinal()
        .rangeBands range, .1, .1


  setAxisDomain: ( axis ) ->

    if _.isEqual( axis, "y" )
      domain = [0, d3.max @.yAxisData ]
    else
      domain = @.xAxisData

    @[axis].domain domain

  createChart: () ->
    # Only get the chart element for this view
    elem = @.$el.find(".vis-chart")

    # Apply width. If legend is true, draw it
    # Height includes chart height, top margin, and legend height
    # Then apply a chart wrapper for transforming the chart (not including the legend)
    chart = d3.select elem[0]
      .attr "width", "100%"
      .call if @.dataConfig.get("legend") then @.drawLegend else () -> null
      .attr "height", @.dataConfig.get("height") + @.dataConfig.get("margin").top + @.dataConfig.get("margin").bottom + @._legendHeight
    .append "g"
      .attr "class", "chart_wrapper"
      .attr "transform", "translate(#{@.dataConfig.get('margin').left}, #{@.dataConfig.get('margin').top + @._legendHeight})"
    chart

  drawXAxis: () ->
    grid = 0
    if @.dataConfig.get("grid_lines")
      grid = -@.dataConfig.get("height")

    x = @.x.copy()
    range = [0, @._pixelWidth]
    x.rangeBands range, .1, .1

    @.xAxis = d3.svg.axis()
      .scale x
      .orient @.dataConfig.get("xAxisPos")
      .innerTickSize grid
      .tickFormat @.dataConfig.get("xFormat")
      # .ticks 10

    axisElem = @.chart.select("g.x")

    if _.isNull( axisElem[0][0] )
      @.chart.append "g"
        .attr "class", "x axis"
        .attr "transform", "translate(0,#{@.dataConfig.get('height')})"
        .call @.xAxis
    else
      axisElem.call @.xAxis


  drawYAxis: () ->
    grid = 0
    if @.dataConfig.get("grid_lines")
      grid = -@._pixelWidth

    @.yAxis = d3.svg.axis()
      .scale @.y
      .orient @.dataConfig.get("yAxisPos")
      .innerTickSize grid
      .tickFormat @.dataConfig.get("yFormat")
      # .ticks 10

    @.chart.append "g"
        .attr "class", "y axis"
        .call @.yAxis
      .append "text"
        .attr "class", "axis-label"
        .attr "transform", "rotate(-90)"
        .attr "y", 6
        .attr "dy", ".71em"
        .style "text-anchor", "end"
        .text "Something"

  drawLegend: (chart) ->
    chart.append "g"
      .attr "class", "legend"
      .attr "transform", "translate(#{@.dataConfig.get('margin').left}, #{@.dataConfig.get('margin').top - 10})"
      .style "font-size", "12px"
      .call @._legend

  _legend: (g) ->

    legend = g.selectAll ".legend-item"
      .data @.xAxisData

    legend.enter().append "circle"
      .attr "class", "legend-item"
      .attr "cx", 0
      .attr "cy", 0
      .style "fill", (d, index) =>
        model = @.dataCollection.at index
        @.dataConfig.get("color") @.dataCollection, model, index
      .attr "r", 7

    legend.enter().append "text"
      .attr "class", "legend-text"
      .attr "x", 0
      .attr "y", 0
      .text (d,i) ->
        d.capitalize()

    @._positionLegend()

  _positionLegend: () ->

    xGap = 30
    yGap = 10
    currentWidth = 0
    currentRow = 0
    xPos = []
    yPos = []
    row = []

    d3.selectAll @.$el.find(".legend-text")
      .attr 'x', (d,i) ->
        width = @.getBBox().width
        this_row = currentRow
        x = currentWidth + xGap
        if (x+width) > @._pixelWidth
          x = xGap
          currentRow++
          this_row = currentRow
          currentWidth = 0
        else
          currentWidth = x+width
        xPos[i] = x
        row[i] = this_row
        x
      .attr 'y', (d,i) ->
        height = @.getBBox().height
        yPos[i] = height * row[i] + yGap
        height * row[i] + yGap + 4

    d3.selectAll @.$el.find(".legend-item")
      .attr 'cx', (d,i) ->
        xPos[i] - 10
      .attr 'cy', (d,i) ->
        yPos[i]

    @._legendHeight = 25 * (currentRow + 1)


  clearChart: () ->
    elem = @.$el.find(".vis-chart")[0]
    $(elem).children().remove()