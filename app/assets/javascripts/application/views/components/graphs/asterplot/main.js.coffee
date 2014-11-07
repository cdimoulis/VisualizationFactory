App.View.extend
  name: "components/graphs/asterpot/main"
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
      @.doChart()
      # @.drawXAxis()


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

    @.div = @.createChart()

    @.doDataDisplay()


  createChart: () ->
    # Only get the chart element for this view
    elem = @.$el.find(".vis-asterplot")

    @.pie = d3.layout.pie()
      .sort null
      .value (d) ->
        d.weight

    

  doDataDisplay: () ->



  clearChart: () ->
    elem = @.$el.find(".vis-chart")[0]
    $(elem).children().remove()