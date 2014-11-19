App.View.extend
  name: "components/graphs/asterplot/main"
  showing: true
  _height: 500
  _legendHeight: 0
  _percentWidth: 100
  _pixelWidth: 0
  # _current: []
  template: () -> "<div class='vis-asterplot'></div>"

  acceptedTypes: [ "number", "string", "Date:Moment", "Date:Date" ]
  events:
    'resize': '_onResize'
    'ready': '_onReady'

  initialize: () ->

    _.bindAll @, "postInitialize", "_onReady", "_onResize", "onResize", "updateView", "doChart", "doDataDisplay", "createChart", "loadGraphic", "changeWeight", "showTooltip", "hideTooltip", "clearChart"

    $(window).on "resize", @._onResize

    @.color = d3.scale.category10()

    @.setConfigOptions()

    @.setData()

    @.postInitialize()

    @

  postInitialize: () ->


  _onReady: () ->

    _.defer () =>

      if _.isUndefined @.tooltip
        @.tooltip = d3.select "div.vis-chart-tooltip"

        if _.isNull @.tooltip[0][0]
          @.tooltip = d3.select("body").append("div")
            .attr "class", "vis-chart-tooltip"
            .style "opacity", 0


      @._percentWidth = 100 - ( ( @.dataConfig.get("margin").left + @.dataConfig.get("margin").right) / @.$el.width() ) * 100

      @._pixelWidth = @.$el.width() * ( @._percentWidth / 100 )

      @.radius = Math.min(@.dataConfig.get('height'),@._pixelWidth) / 2

      @.innerRadius = .3 * @.radius

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
      @.listenTo @.dataCollection, "change", () =>
        console.log "here"
        @._parseData()
        @.changeWeight()

      # If dataCollection is new
      @.listenTo @.dataCollection, "new", @.updateView
      

    # Error if no collection
    else
      throw "#{@.name}: Collection Error: data collection is #{collection}."

  _parseData: () ->

    @.asterData = @.dataCollection.get "data"
    console.log @.asterData


  _detectDataType: ( axis ) ->




  ###
  Chart Configuring and Drawing Function
  ###

  doChart: () ->

    @.clearChart()

    @.createChart()

    _.defer () =>
      @.doDataDisplay()
      @.loadGraphic()


  createChart: () ->
    # Only get the chart element for this view
    elem = @.$el.find(".vis-asterplot")

    @.pie = d3.layout.pie()
      .sort null
      .value (d) =>
        d[ @.dataConfig.get 'weightKey' ]

    @.arc = d3.svg.arc()
      .innerRadius @.innerRadius
      .outerRadius (d) =>
        ( @.radius - @.innerRadius ) * ( d.data[ @.dataConfig.get "value" ] / @.dataConfig.get('maxValue')) + @.innerRadius

    @.outlineArc = d3.svg.arc()
      .innerRadius @.innerRadius
      .outerRadius @.radius

    @.chart = d3.select( elem[0] ).append("svg")
        .attr "width", @._pixelWidth
        .attr "height", @.dataConfig.get("height")
      .append "g"
        .attr "transform", "translate(#{@._pixelWidth/2},#{@.dataConfig.get('height')/2})"

  doDataDisplay: () ->

    @.path = @.chart.selectAll ".solidArc"
        .data @.pie( @.asterData )
      .enter().append "path"
        .attr "class", "solidArc"
        .attr "fill", (d) =>
          @.color d.data[ @.dataConfig.get "key" ]
        .attr "stroke", "gray"
        .attr "d", @.arc
        .on "mouseover", (d) =>
          @.showTooltip d.data
        .on "mouseout", @.hideTooltip
        # .each (d) => @._current = d
        .each (d) -> @._current = d
        # .each (d,i) => @._current[i] = d

    @.outerPath = @.chart.selectAll ".outlineArc"
        .data @.pie( @.asterData )
      .enter().append "path"
        .attr "class", "outlineArc"
        .attr "fill", "none"
        .attr "stroke", "gray"
        .attr "d", @.outlineArc
        .each (d) -> @._current = d

    score = @.getScore()

    @.text = @.chart.append "svg:text"
      .attr "class", "aster-score"
      .attr "dy", ".35em"
      .attr "text-anchor", "middle"
      .text Math.round( ( score * 100) ) / 100

  getScore: () ->
    total = @.asterData.reduce (a,b) =>
      a + ( b[ @.dataConfig.get "value" ] * b[ @.dataConfig.get 'weightKey' ] )
    , 0

    weight = @.asterData.reduce (a,b) =>
      a + b[ @.dataConfig.get 'weightKey' ]
    , 0

    if _.isEqual weight, 0
      score = 0
    else
      score = total / weight

    score

  loadGraphic: () ->
    @.path = @.path.data @.pie( @.asterData )
    @.outerPath = @.outerPath.data @.pie( @.asterData )
    arc = @.arc
    outlineArc = @.outlineArc
    current = @.asterData[0]

    @.path.transition()
      .duration 750
      .attrTween "d", (d) ->
        i = d3.interpolate current, d
        current = i(0)
        (t) -> 
          arc i(t)

    @.outerPath.transition()
      .duration 750
      .attrTween "d", (d) ->
        i = d3.interpolate current, d
        current = i(0)
        (t) -> 
          outlineArc i(t)

  changeWeight: () ->
    @.path = @.path.data @.pie( @.asterData )
    @.outerPath = @.outerPath.data @.pie( @.asterData )
    arc = @.arc
    outlineArc = @.outlineArc

    @.path.transition()
      .duration 750
      .attrTween "d", (d) ->
        i = d3.interpolate @._current, d
        @._current = i(0)
        (t) -> 
          arc i(t)

    @.outerPath.transition()
      .duration 750
      .attrTween "d", (d) ->
        i = d3.interpolate @._current, d
        @._current = i(0)
        (t) -> 
          outlineArc i(t)

    score = @.getScore()

    @.text.text Math.round( (score * 100 ) ) / 100

  showTooltip: ( data ) ->
    t = @.dataConfig.get('tooltip') @.dataCollection, data

    if !_.isEmpty( t )
      @.tooltip.html t
        .transition().duration 200
          .style "opacity", 1
          .style 'left', "#{d3.event.pageX}px"
          .style 'top', "#{d3.event.pageY}px"
    

  hideTooltip: () ->
    @.tooltip.transition()
      .duration 200
      .style "opacity", 0


  clearChart: () ->
    elem = @.$el.find(".vis-asterplot")[0]
    $(elem).children().remove()