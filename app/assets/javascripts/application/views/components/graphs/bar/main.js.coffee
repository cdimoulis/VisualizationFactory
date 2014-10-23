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
  name: 'components/graphs/bar/main'
  required_attrs: ['xKey','yKey']

  postInitialize: () ->

    @

  onViewDidLoad: () ->

  onResize: () ->

  doDataDisplay: () ->

    @.barWidth = @.x.rangeBand()

    bars = @.createBars()

    bars = @.drawBars bars

    if @.barText
      bars = @.drawBarText bars

  createBars: () ->

    bars = @.chart.selectAll ".bars"
        .data @.yAxisData

    bars

  drawBars: ( bars ) ->

    bars.enter().append "rect"
      .attr "class", "bar"
      .attr "y", ( d ) =>
        @.y d
      .attr "x", ( d, index ) => 
        @.x( @.xAxisData[ index ] ) + "%"
      .attr "height", ( d ) => 
        @.dataConfig.get("height") - @.y d
      .attr "width", @.barWidth + "%"
      .style "fill", ( d, index ) =>
        model = @.dataCollection.at index
        @.dataConfig.get("color")(@.dataCollection, model, index)

    bars

  drawBarText: ( bars ) ->

    bars.append "text"
      .attr "x", ( d, index ) => 
        ( @.x( @.xAxisData[ index ] ) + @.barWidth/2 ) + "%"
      .attr "y", ( d ) => 
        @.y(d) + 3
      .attr "dy", "1em"
      .attr "dx", ( d ) => 
        l = "#{d}".length
        "-.#{l}em"
      .style "fill", "white"
      .text ( d ) => 
        d

    bars


  clearChart: () ->
    elem = @.$el.find(".grep-chart")[0]
    $(elem).children().remove()