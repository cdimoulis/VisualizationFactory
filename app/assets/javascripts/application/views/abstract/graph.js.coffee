App.View.extend
  name: "abstract/graph"
  _padding: 0               # Padding for scales (mostly used on bar chart)
  _legendHeight: 0          # Height, in pixels, of the legend
  _percentWidth: 100        # Width, in percent, for the chart
  _pixelWidth: 0            # Width, in pixels, for the chart
  _hiddenGroups: []         # List of groups that are hidden due to user input
  _dataModels: []           # List of models from data collection that are visible
  template: () -> "<svg class='vis-chart'></svg>"

  acceptedTypes: [ "number", "string", "Date:Moment", "Date:Date" ]
  events:
    'resize': '_onResize'
    'ready': '_onReady'

  initialize: () ->

    _.bindAll @, "postInitialize", "_onReady", "_onResize", "onResize", "updateView", "doChart", "doDataDisplay", "setConfigOptions", "_isConfigValid", "setData", "_parseData", "_detectDataType", "_convertData", "isDataValid", "isDataEmpty", "setXRange", "setYRange", "setXDomain", "setYDomain", "createChart", "drawXAxis", "drawYAxis", "doLegend", "_legend", "_positionLegend", "clearChart"

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
      @.doChart()


  _onResize: () ->
    @._percentWidth = 100 - ( ( @.dataConfig.get("margin").left + @.dataConfig.get("margin").right) / @.$el.width() ) * 100

    @._pixelWidth = @.$el.width() * ( @._percentWidth / 100 )
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
      throw "#{@.name}: Collection Error: data collection is #{@dataCollection}."

  _parseData: () ->

    # Remove models of hidden groups
    @._dataModels = @.dataCollection.filter (model) =>
      group = @.dataConfig.get("group") model
      !_.contains( @._hiddenGroups, group )

    # @.xAxisData = @.dataCollection.pluck @.dataConfig.get("xKey")
    @.xAxisData = _.map @._dataModels, (model) =>
      model.get @.dataConfig.get("xKey")

    if !_.isEqual( @.xAxisData.length, 0 )
      @._detectDataType "xAxisData"

    # @.yAxisData = @.dataCollection.pluck @.dataConfig.get("yKey")
    @.yAxisData = _.map @._dataModels, (model) =>
      model.get @.dataConfig.get("yKey")

    if !_.isEqual(  @.yAxisData.length, 0 )
      @._detectDataType "yAxisData"

    # Get groups
    groups = @.dataCollection.map (model) =>
      @.dataConfig.get("group") model

    @.groups = _.sortBy _.uniq( groups ), (val) ->
      val

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

      # @._convertData axis, type

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

      @.setXRange()
      @.setYRange()

      @.setXDomain()
      @.setYDomain()

      @.drawXAxis()
      @.drawYAxis()

      @.doDataDisplay()

    else

      if @.isDataEmpty()
        throw "#{@.name}: data is empty."
      else
        throw "#{@.name}: data is not valid."


  doDataDisplay: () ->



  setXRange: () ->
    # Both a percent and pixel function for x position

    range = [0, @._percentWidth]
    rangePix = [0, @._pixelWidth]

    if _.isEqual( @.xAxisType, "string" ) or _.isEqual( @._chartXDataCategory, "discrete" )
      @.x = d3.scale.ordinal()
        .rangeBands range, @._padding, @._padding

      @.xPix = d3.scale.ordinal()
        .rangeBands rangePix, @._padding, @._padding

    else
      valueRange = [ _.min( @.xAxisData ), _.max( @.xAxisData ) ]

      if _.isEqual( @.xAxisType, "Date:Date" ) or _.isEqual( @.xAxisType, "Date:Moment" )
        @.x = d3.time.scale()
        @.xPix = d3.time.scale()

      else
        @.x = d3.scale.linear()
        @.xPix = d3.scale.linear()
          

      @.x.range range
      @.xPix.range rangePix


  setYRange: () ->
    range = [@.dataConfig.get("height"),0]

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
      throw "#{@.name}: y axis invalid data type of #{type}."


  setYDomain: () ->
    domain = @.yAxisData
    if _.isEqual( @.yAxisTyp, "string")
      @.y.domain @.yAxisData
    else
      if _.isNull( @.dataConfig.get("yDomain") )
        min = _.min( domain )
        max = _.max( domain )
        diff = max - min
        buffer = Math.ceil diff*.05

        if min < 0
          min = min - buffer
        else
          min = if min - buffer < 0 then 0 else min - buffer

        max = max + buffer

        domain = [ min, max ]
      else
        domain = @.dataConfig.get("yDomain") @.dataCollection

      @.y.domain domain

  setXDomain: () ->
    domain = @.xAxisData

    if !_.isEqual( @._chartXDataCategory, "discrete" ) and ( _.isEqual( @.xAxisType, "number" ) or _.isEqual( @.xAxisType, "Date:Date" ) or _.isEqual( @.xAxisType, "Date:Moment" ) )
      if _.isNull( @.dataConfig.get("xDomain") )

        min = _.min( domain )
        max = _.max( domain )
        diff = max - min
        buffer = Math.ceil diff*.05

        if min < 0
          min = min - buffer
        else
          min = if min - buffer < 0 then 0 else min - buffer

        max = max + buffer

        domain = [ min, max ]
      else
        domain = @.dataConfig.get("xDomain") @.dataCollection

    @.x.domain domain
    @.xPix.domain domain



  createChart: () ->
    # Only get the chart element for this view
    elem = @.$el.find(".vis-chart")

    # Apply width. If legend is true, draw it
    # Height includes chart height, top margin, and legend height
    # Then apply a chart wrapper for transforming the chart (not including the legend)
    chart = d3.select elem[0]
      .attr "width", "100%"
      .call if @.dataConfig.get("legend") then @.doLegend else () -> null
      .attr "height", @.dataConfig.get("height") + @.dataConfig.get("margin").top + @.dataConfig.get("margin").bottom + @._legendHeight
    .append "g"
      .attr "class", "chart_wrapper"
      .attr "transform", "translate(#{@.dataConfig.get('margin').left}, #{@.dataConfig.get('margin').top + @._legendHeight})"
    chart

  drawXAxis: () ->
    grid = 0
    if @.dataConfig.get("grid_lines")
      grid = -@.dataConfig.get("height")

    # Minimize the number of tickmarks if data type allows
    if _.isEqual @.xAxisType, "string"
      tickValues = @.xPix.domain().filter () -> true
    else
      numTicks = Math.ceil( @.xAxisData.length / 20 )
      tickValues = @.xPix.domain().filter (d,i) ->
        !( i % numTicks )

    # Create x axis    
    @.xAxis = d3.svg.axis()
      .scale @.xPix
      .orient @.dataConfig.get("xAxisPos")
      .innerTickSize grid
      .tickFormat @.dataConfig.get("xFormat")
      # .tickValues tickValues


    # Add x axis to chart it to the chart
    axisElem = @.chart.select("g.x")

    if _.isNull( axisElem[0][0] )
      @.chart.append "g"
          .attr "class", "x axis"
          .attr "transform", "translate(0,#{@.dataConfig.get('height')})"
          .call @.xAxis
        .append "text"
          .attr "class", "x axis-label"
          .text () =>
            @.dataConfig.get("xLabel")(@.dataConfig.get 'xKey')

      # Rotate x axis labels
      angle = @.dataConfig.get 'xRotate'
      labelHeights = [20]
      if (angle > 0) and (angle <=90)
        d3.selectAll @.$el.find(".x.axis .tick text")
          .attr "transform", () ->
            w = @.getBBox().width
            h = @.getBBox().height
            perc = angle / 90
            labelHeights.push( w*perc + 5 )
            "translate(#{(h/2)*perc + (w/2) * (1-perc)},#{(w/2) * perc + 5}) rotate(#{angle})"

      # place the x axis label
      label = @.$el.find ".x .axis-label"
      w = label[0].getBBox().width
      h = label[0].getBBox().height
      d3.selectAll label
        .attr "transform", () =>
          maxHeight = _.max labelHeights
          "translate(#{@._pixelWidth/2 - w/2}, #{maxHeight + h + 10})"
    
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


    # Add y axis to chart
    @.chart.append "g"
        .attr "class", "y axis"
        .call @.yAxis
      .append "text"
        .attr "class", "y axis-label"
        .text () =>
          @.dataConfig.get("yLabel") @.dataConfig.get 'yKey'

    # place the y axis label
    label = @.$el.find ".y .axis-label"
    w = label[0].getBBox().width
    d3.selectAll label
      .attr "transform", () =>
        "translate(-35, #{@.dataConfig.get('height')/2 + w/2}) rotate(-90)"

  doLegend: (chart) ->

    chart.append "g"
      .attr "class", "legend"
      .attr "transform", "translate(#{@.dataConfig.get('margin').left}, #{@.dataConfig.get('margin').top - 10})"
      .style "font-size", "12px"
      .call @._legend

  _legend: (g) ->

    legend = g.selectAll ".legend-item"
      .data @.groups

    legend.enter().append "circle"
      .attr "class", "legend-item"
      .attr "cx", 0
      .attr "cy", 0
      .style "stroke", ( group, index ) =>
        model = @.dataCollection.at index
        @.dataConfig.get('groupColor') group
      .style "fill-opacity", (group, index) =>
        if _.contains( @._hiddenGroups, group)
          0
        else
          .7
      .style "fill", (group, index) =>
        @.dataConfig.get("groupColor") group
      .attr "r", 7
      .on "click", (group,index) =>
        if _.contains( @._hiddenGroups, group )
          @._hiddenGroups = _.difference @._hiddenGroups, [group]
        else
          @._hiddenGroups = _.union @._hiddenGroups, [group]

        @.updateView()


    legend.enter().append "text"
      .attr "class", "legend-text"
      .attr "x", 0
      .attr "y", 0
      .text (d,i) ->
        String(d).capitalize()

    @._positionLegend()

  _positionLegend: () ->

    xGap = 30
    yGap = 10
    currentWidth = 0
    currentRow = 0
    xPos = []
    yPos = []
    row = []
    rowWidth = @._pixelWidth

    d3.selectAll @.$el.find(".legend-text")
      .attr 'x', (d,i) ->
        width = @.getBBox().width
        this_row = currentRow
        x = currentWidth + xGap

        if (x+width) > rowWidth
          x = xGap
          currentRow++
          this_row = currentRow
          currentWidth = 0
        
        currentWidth = x+width
        xPos[i] = x
        row[i] = this_row
        x
      .attr 'y', (d,i) ->
        height = @.getBBox().height
        yPos[i] = height * row[i] + yGap*row[i]
        height * row[i] + yGap*row[i] + 4

    d3.selectAll @.$el.find(".legend-item")
      .attr 'cx', (d,i) ->
        xPos[i] - 10
      .attr 'cy', (d,i) ->
        yPos[i]

    @._legendHeight = 14 * currentRow + yGap * currentRow + 4


  clearChart: () ->
    elem = @.$el.find(".vis-chart")[0]
    $(elem).children().remove()