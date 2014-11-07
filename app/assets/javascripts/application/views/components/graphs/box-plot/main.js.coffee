###
Documentation for bar graph component

Config collection parameters

Data types accepted: Number, String, Moment, Date

dataCollection: Collection with models desired to graph

dataConfig: Model for configuration
  -> x: REQUIRED
  -> y: REQUIRED
  -> color: OPTIONAL
  -> size: N/A
  -> xFormat: OPTIONAL
  -> yFormat: OPTIONAL

options: Model with data for view
  -> height: The height of the view
  -> barText: Boolean. Show text on bar or not. Default false
  -> yAxisPos: Either "left" or "right". Default "left"
  -> xAxisPos: Either "bottom" or "top". Default "top"


###

App.Views["abstract/graph"].extend 
  name: 'components/graphs/box-plot/main'
  required_attrs: ['xKey','yKey']
  _chartXDataCategory: "discrete"
  groupData: {}
  groupStats: {}

  postInitialize: () ->

    @

  onViewDidLoad: () ->

  onResize: () ->

  preChart: () ->

    # May need to collect group data together for analysis


  doDataDisplay: () ->

    @.setupGroupData()
    @.setupGroupStats()

    @.groupWidth = @.x.rangeBand()

    plots = @.createBoxPlots()

    plots = @.drawBoxPlots plots

  setupGroupData: () ->

    @.groupData = {}

    _.each @._dataModels, (model) =>
      group = model.get @.dataConfig.get( 'xKey' )

      if _.isUndefined @.groupData[group]
        @.groupData[group] = []

      @.groupData[group].push model.get @.dataConfig.get( "yKey" )

  setupGroupStats: () ->

    @.groupStats = {}

    _.each @.groupData, (data, key) =>

      sorted = data.sort()

      @.groupStats[key] =
        "max": d3.max sorted
        "min": d3.min sorted
        "median": d3.median sorted
        "upperQuartile": d3.quantile sorted, .75
        "lowerQuartile": d3.quantile sorted, .25


  createBoxPlots: () ->

    plots = @.chart.selectAll ".box-plot"
        .data _.keys @.groupStats

    plots

  drawBoxPlots: ( plots ) ->

    # Draw quartile rectangle
    plots.enter().append "rect"
      .attr "class", "box-plot"
      .attr "x", ( val, index ) =>
        "#{@.x(val) + @.groupWidth/4}%"
      .attr "y", ( val, index ) =>
        @.y @.groupStats[val].upperQuartile
      .attr "width", "#{@.groupWidth/2}%"
      .attr "height", ( val, index ) =>
        bottom = @.y @.groupStats[val].lowerQuartile
        bottom - @.y @.groupStats[val].upperQuartile
      .on "click", ( val, index ) =>
        obj = {}
        obj[@.dataConfig.get('xKey')] = val
        models = @.dataCollection.where obj
        @.trigger "CLICK:CHART", models
      .on "mouseover", ( val, index) =>
        obj = {}
        obj[@.dataConfig.get('xKey')] = val
        models = @.dataCollection.where obj
        data = @.groupStats[val]
        data.x = val

        @.showTooltip models, data
      .on "mouseout", @.hideTooltip

    # Median Line
    plots.enter().append "line"
      .attr "class", "box-plot-median"
      .attr "x1", ( val, index ) =>
        "#{@.x(val) + @.groupWidth/4}%"
      .attr "x2", ( val, index ) =>
        "#{@.x(val) + (3*@.groupWidth)/4}%"
      .attr "y1", ( val, index ) =>
        @.y @.groupStats[val].median
      .attr "y2", ( val, index ) =>
        @.y @.groupStats[val].median

    # Upper error line
    plots.enter().append "line"
      .attr "class", "error-line"
      .attr "x1", ( val, index ) =>
        "#{@.x(val) + @.groupWidth/2}%"
      .attr "x2", ( val, index ) =>
        "#{@.x(val) + @.groupWidth/2}%"
      .attr "y1", ( val, index ) =>
        @.y @.groupStats[val].upperQuartile
      .attr "y2", ( val, index ) =>
        @.y @.groupStats[val].max


    # Lower error line
    plots.enter().append "line"
      .attr "class", "error-line"
      .attr "x1", ( val, index ) =>
        "#{@.x(val) + @.groupWidth/2}%"
      .attr "x2", ( val, index ) =>
        "#{@.x(val) + @.groupWidth/2}%"
      .attr "y1", ( val, index ) =>
        @.y @.groupStats[val].lowerQuartile
      .attr "y2", ( val, index ) =>
        @.y @.groupStats[val].min

    # Upper Cap
    plots.enter().append "line"
      .attr "class", "error-cap-line"
      .attr "x1", ( val, index ) =>
        "#{@.x(val) + @.groupWidth/2 + 1}%"
      .attr "x2", ( val, index ) =>
        "#{@.x(val) + @.groupWidth/2 - 1}%"
      .attr "y1", ( val, index ) =>
        @.y @.groupStats[val].max
      .attr "y2", ( val, index ) =>
        @.y @.groupStats[val].max

    # Lower Cap
    plots.enter().append "line"
      .attr "class", "error-cap-line"
      .attr "x1", ( val, index ) =>
        "#{@.x(val) + @.groupWidth/2 + 1}%"
      .attr "x2", ( val, index ) =>
        "#{@.x(val) + @.groupWidth/2 - 1}%"
      .attr "y1", ( val, index ) =>
        @.y @.groupStats[val].min
      .attr "y2", ( val, index ) =>
        @.y @.groupStats[val].min

    plots