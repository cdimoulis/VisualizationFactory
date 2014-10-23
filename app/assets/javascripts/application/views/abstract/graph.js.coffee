App.View.extend
  name: "abstract/graph"
  showing: true
  _percentWidth: 100
  _pixelWidth: 0
  template: () -> "<svg class='vis-chart'></svg>"

  acceptedTypes: [ "number", "string", "Date:Moment", "Date:Date" ]
  events:
    'resize': '_onResize'
    'ready': '_onReady'

  initialize: () ->

    _.bindAll @, "postInitialize", "_onReady", "_onResize", "onResize", "updateView", "doChart", "doDataDisplay", "setConfigOptions", "_isConfigValid", "fullScreenHandler", "setData", "_parseData", "_detectDataType", "_convertData", "isDataValid", "isDataEmpty", "setAxisRange", "setAxisDomain", "createChart", "drawXAxis", "drawYAxis", "drawLegend", "_legend", "clearChart"

    $(window).on "resize", @._onResize

    @.setConfigOptions()

    @.setData()

    # @.fullScreenHandler()

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


  fullScreenHandler: () ->
    # A Full Screen Model was placed the config collection by the jarvis widget
    @.listenTo @.config.get("full_screen_model"), "change", (full_screen_model) =>
      if full_screen_model.get("fullscreen")
        @.height = @.$el.height() - 34
        
      else
        @.height = @.dataConfig.get("height")

      @.render()

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

      @.setAxisRange "x"
      @.setAxisRange "y"

      @.setAxisDomain "x"
      @.setAxisDomain "y"

      @.chart = @.createChart()

      @.drawXAxis()
      @.drawYAxis()

      @.doDataDisplay()

      window.chart = @.chart
      @.drawLegend()

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
    elem = @.$el.find(".vis-chart")

    chart = d3.select elem[0]
      .attr "width", "100%"
      .attr "height", @.dataConfig.get("height") + @.dataConfig.get("margin").top + @.dataConfig.get("margin").bottom
    .append "g"
      .attr "class", "chart_wrapper"
      .attr "transform", "translate(#{@.dataConfig.get('margin').left}, #{@.dataConfig.get('margin').top})"
    chart

  drawXAxis: () ->

    x = @.x.copy()
    range = [0, @._pixelWidth]
    x.rangeBands range, .1, .1

    @.xAxis = d3.svg.axis()
      .scale x
      .orient @.dataConfig.get("xAxisPos")
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
    @.yAxis = d3.svg.axis()
      .scale @.y
      .orient @.dataConfig.get("yAxisPos")
      .tickFormat @.dataConfig.get("yFormat")
      # .ticks 10

    @.chart.append "g"
        .attr "class", "y axis"
        .call @.yAxis
      .append "text"
        .attr "transform", "rotate(-90)"
        .attr "y", 6
        .attr "dy", ".71em"
        .style "text-anchor", "end"
        .text "Something"

  drawLegend: () ->
    @.chart.append "g"
      .attr "class", "legend"
      .attr "transform", "translate(50,0)"
      .style "font-size", "12px"
      .call @._legend

  _legend: (g) ->

    legend = g.selectAll ".legend-item"
      .data @.xAxisData

    legend.enter().append "circle"
      .attr "class", "legend-item"
      .attr "cx", (d,i) ->
        0
      .attr "cy", (d,i) ->
        i*20
      .style "fill", (d, index) =>
        model = @.dataCollection.at index
        @.dataConfig.get("color") @.dataCollection, model, index
      .attr "r", 5

    legend.enter().append "text"
      .attr "class", "legend-text"
      .attr "x", (d,i) ->
        10
      .attr "y", (d,i) ->
        i*20 + 3
      .text (d,i) ->
        console.log "text",d,i
        d.capitalize()

    # elem.each () ->
    #   console.log "start"
    #   items = {}
    #   g = d3.select @
    #   svg = d3.select g.property("nearestViewportElement")
    #   legendPadding = g.attr("data-style-padding") or 5
    #   lb = g.selectAll(".legend-box").data([true])
    #   li = g.selectAll(".legend-box").data([true])

    #   lb.enter()
    #     .append "rect"
    #     .classed "legend-box", true

    #   li.enter()
    #     .append "g"
    #     .classed "legend-items", true

    #   svg.selectAll("[data-legend]").each () ->
    #     console.log "data-legend"
    #     self = d3.select @
    #     items[self.attr("data-legend")] = 
    #       pos: self.attr("data-legend-pos") or @.getBBox().yAxisType
    #       color: if self.attr("data-legend-color") is not undefined then self.attr("data-legend-color") else if self.style("fill") is not 'none' then self.style("fill") else self.style("stroke")

    #   console.log "items",items
    #   items = d3.entries(items).sort (a,b) ->
    #     console.log "a,b", a,b
    #     a.value.pos - b.value.pos

    #   li.selectAll "text"
    #     .data items, (d) ->
    #       console.log ".data items",d
    #       d.key
    #     .call (d) ->
    #       console.log "call1", d
    #       d.enter().append("text")
    #     .call (d) ->
    #       console.log "call2", d
    #       d.exit().remove()
    #     .attr "y", (d,i) ->
    #       i+"em"
    #     .attr "x", "1em"
    #     .text (d) ->
    #       d.key

    #   li.selectAll "circle"
    #     .data items, (d) ->
    #       console.log "circle .data items", d
    #       d.key
    #     .call (d) ->
    #       console.log "call1",d
    #       d.enter().append "circle"
    #     .call (d) ->
    #       console.log "call2",d
    #       d.exit().remove()
    #     .attr "cy", (d,i) ->
    #       console.log "cy",d,i
    #       i-0.25 + "em"
    #     .attr "r", "0.4em"
    #     .style "fill", (d) ->
    #       console.log "fill", d
    #       d.value.color

    #   lbbox = li[0][0].getBBox()
    #   lb.attr "x", lbbox.x - legendPadding
    #     .attr "y", lbbox.y - legendPadding
    #     .attr "height", lbbox.height+2*legendPadding
    #     .attr "width", lbbox.width+2*legendPadding

    # elem


  clearChart: () ->
    elem = @.$el.find(".vis-chart")[0]
    $(elem).children().remove()