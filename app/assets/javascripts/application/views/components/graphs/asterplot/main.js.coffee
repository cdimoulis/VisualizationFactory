App.View.extend
  name: "components/graphs/asterplot/main"
  showing: true
  _height: 500
  _legendHeight: 0
  _percentWidth: 100
  _pixelWidth: 0
  template: () -> "<div class='vis-asterplot'></div>"

  acceptedTypes: [ "number", "string", "Date:Moment", "Date:Date" ]
  events:
    'resize': '_onResize'
    'ready': '_onReady'

  initialize: () ->

    _.bindAll @, "postInitialize", "_onReady", "_onResize", "onResize", "updateView", "doChart", "doDataDisplay", "createChart", "clearChart"

    $(window).on "resize", @._onResize

    @.color = d3.scale.category10()

    @.setConfigOptions()

    # @.setData()

    @.postInitialize()

    @

  postInitialize: () ->


  _onReady: () ->

    _.defer () =>

      @._percentWidth = 100 - ( ( @.dataConfig.get("margin").left + @.dataConfig.get("margin").right) / @.$el.width() ) * 100

      @._pixelWidth = @.$el.width() * ( @._percentWidth / 100 )

      @.radius = Math.min(@.dataConfig.get('height'),@._pixelWidth) / 2

      @.innerRadius = .3 * @.radius

      console.log @.radius, @.innerRadius

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




  ###
  Chart Configuring and Drawing Function
  ###

  doChart: () ->

    @.clearChart()

    @.createChart()

    @.doDataDisplay()


  createChart: () ->
    # Only get the chart element for this view
    elem = @.$el.find(".vis-asterplot")

    @.pie = d3.layout.pie()
      .sort null
      .value (d) ->
        d.weight

    # @.tip = d3.tip()
    #   .attr "class", "d3-tip"
    #   .offset 0,0
    #   .html (d) ->
    #     "#{d.data.label}: <span style='color:orangered'>#{d.data.score}</span>"

    @.arc = d3.svg.arc()
      .innerRadius @.innerRadius
      .outerRadius (d) =>
        ( @.radius - @.innerRadius ) * ( d.data.val / 100) + @.innerRadius

    @.outlineArc = d3.svg.arc()
      .innerRadius @.innerRadius
      .outerRadius @.radius

    @.chart = d3.select( elem[0] ).append("svg")
      .attr "width", @._pixelWidth
      .attr "height", @.dataConfig.get("height")
      .append "g"
      .attr "transform", "translate(#{@._pixelWidth/2},#{@.dataConfig.get('height')/2})"
      # .call @.tip

  doDataDisplay: () ->

    path = @.chart.selectAll ".solidArc"
        .data @.pie( @.dataCollection )
      .enter().append "path"
        .attr "class", "solidArc"
        .attr "fill", (d) =>
          @.color d.data.name
        .attr "stroke", "gray"
        .attr "d", @.arc
        # .on "mouseover", @.tip.show
        # .on "mouseout", @.tip.hide

    outerPath = @.chart.selectAll ".outlineArc"
        .data @.pie( @.dataCollection )
      .enter().append "path"
        .attr "class", "outlineArc"
        .attr "fill", "none"
        .attr "stroke", "gray"
        .attr "d", @.outlineArc

    total = data.reduce (a,b) ->
      a + (b.score * b.weight)
    , 0

    weight = data.reduce (a,b) ->
      a + b.weight
    , 0

    score = total / weight

    @.chart.append "svg:text"
      .attr "class", "aster-score"
      .attr "dy", ".35em"
      .attr "text-anchor", "middle"
      .text Math.round(score)


  clearChart: () ->
    elem = @.$el.find(".vis-chart")[0]
    $(elem).children().remove()