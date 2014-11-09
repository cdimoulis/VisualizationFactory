App.View.extend
  name: "components/graphs/treemap/main"
  showing: true
  _legendHeight: 0
  _percentWidth: 100
  _pixelWidth: 0
  template: () -> "<div class='vis-treemap'></div>"

  acceptedTypes: [ "number", "string", "Date:Moment", "Date:Date" ]
  events:
    'resize': '_onResize'
    'ready': '_onReady'

  initialize: () ->

    _.bindAll @, "postInitialize", "_onReady", "_onResize", "onResize", "updateView", "doChart", "doDataDisplay", "createChart", "position", "clearChart"

    $(window).on "resize", @._onResize

    @.color = d3.scale.category10()

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
      @.listenTo @.dataCollection, "change", @.updateView

    # Error if no collection
    else
      throw "#{@.name}: Collection Error: data collection is #{collection}."

  _parseData: () ->

    @.data = @.dataCollection.get "data"


  _detectDataType: ( axis ) ->


  ###
  Chart Configuring and Drawing Function
  ###

  doChart: () ->

    @.clearChart()

    @.div = @.createChart()

    @.doDataDisplay()


  createChart: () ->
    # Only get the chart element for this view
    elem = @.$el.find(".vis-treemap")

    @.treemap = d3.layout.treemap()
      .size [@._pixelWidth, @.dataConfig.get('height')]
      .sticky true
      .value (d) => 
        d[@.dataConfig.get("size")]

    div = d3.select(elem[0]).append("div")
      .style "position", "relative"
      .style "width", "#{@._width + @.dataConfig.get('margin').left + @.dataConfig.get('margin').right}px"
      .style "heigth", "#{@.dataConfig.get('height') + @.dataConfig.get('margin').top + @.dataConfig.get('margin').bottom}px"
      .style "left", "#{@.dataConfig.get('margin').left}px"
      .style "top", "#{@.dataConfig.get('margin').top}px"


    div

  doDataDisplay: () ->
    node = @.div.datum(@.data).selectAll ".node"
        .data @.treemap.nodes
      .enter().append "div"
        .attr "class", "node"
        .call @.position
        .style "background", (d) =>
          if d.children then @.color(d[@.dataConfig.get('key')]) else null
        .text (d) =>
          if d.children then null else d[@.dataConfig.get('key')]


  position: (div) ->

    div.style "left", (d) ->
      "#{d.x}px"
    .style "top", (d) ->
      "#{d.y}px"
    .style "width", (d) ->
      "#{Math.max(0,d.dx-1)}px"
    .style "height", (d) ->
      "#{Math.max(0,d.dy-1)}px"

  clearChart: () ->
    elem = @.$el.find(".vis-treemap")[0]
    $(elem).children().remove()