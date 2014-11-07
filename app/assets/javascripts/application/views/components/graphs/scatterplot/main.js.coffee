###
Documentation for bar graph component

Config collection parameters

Data types accepted: Number, String, Moment, Date

dataCollection: Collection with models desired to graph

dataConfig: Model for configuration
  -> x: REQUIRED
  -> y: REQUIRED
  -> color: OPTIONAL
  -> size: REQUIRED
  -> xFormat: OPTIONAL
  -> yFormat: OPTIONAL

options: Model with data for view
  -> height: The height of the view
  -> barText: Boolean. Show text on bar or not. Default false
  -> yAxisPos: Either "left" or "right". Default "left"
  -> xAxisPos: Either "bottom" or "top". Default "top"


###

App.Views["abstract/graph"].extend 
  name: 'components/graphs/scatterplot/main'
  required_attrs: ['xKey','yKey','size']
  _chartXDataCategory: "continuous"

  postInitialize: () ->

    @

  onViewDidLoad: () ->

  onResize: () ->

  doDataDisplay: () ->

    plots = @.createPlots()

    plots = @.drawPlots plots

  createPlots: () ->

    plots = @.chart.selectAll ".plot"
        .data @.yAxisData

    plots

  drawPlots: ( plots ) ->

    plots.enter().append "circle"
      .attr "class", "plot"
      .attr "cy", ( d ) =>
        @.y d
      .attr "cx", ( d, index ) => 
        "#{@.x( @.xAxisData[ index ] )}%"
      .attr "r", ( d, index ) => 
        model = @._dataModels[ index ]
        @.dataConfig.get("size") model
      .style "stroke", ( d, index ) =>
        model = @._dataModels[ index ]
        @.dataConfig.get('color') @.dataCollection, model
      .style "fill", ( d, index ) =>
        model = @._dataModels[ index ]
        @.dataConfig.get("color") @.dataCollection, model
      .on "click", () ->
        console.log "click plot", arguments
      .on "mouseover", ( d, index) =>
        model = @._dataModels[ index ]
        data = 
          x: model.get @.dataConfig.get('xKey')
          y: model.get @.dataConfig.get('yKey')
          size: @.dataConfig.get('size') model
          color: @.dataConfig.get('color') @.dataCollection, model
          group: @.dataConfig.get('group') model

        @.showTooltip model, data
      .on "mouseout", @.hideTooltip

    plots