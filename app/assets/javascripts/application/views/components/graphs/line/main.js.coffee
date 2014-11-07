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
  name: 'components/graphs/line/main'
  required_attrs: ['xKey','yKey']
  _chartXDataCategory: "continuous"
  lineCommands: {}

  postInitialize: () ->

    @

  onViewDidLoad: () ->

  onResize: () ->

  doDataDisplay: () ->

    @.setupLineCommands()

    lines = @.createLines()

    lines = @.drawLines lines
    
    if @.dataConfig.get('linePoints')
      plots = @.drawPlots()

  setupLineCommands: () ->

    @.lineCommands = {}

    _.each @._dataModels, (model, index) =>
      group = @.dataConfig.get("group") model
      x = @.xPix @.xAxisData[index]
      y = @.y @.yAxisData[index]

      if _.isUndefined @.lineCommands[group]
        @.lineCommands[group] = "M#{x},#{y}"
      else
        @.lineCommands[group] += "L#{x},#{y}"


  createLines: () ->

    lines = @.chart.selectAll ".line"
        .data _.difference( @.groups, @._hiddenGroups )

    lines

  drawLines: ( lines ) ->

    lines.enter().append "path"
      .attr "class", "line"
      .attr "d", ( group ) =>
        @.lineCommands[group]
      .style "stroke", ( group ) =>
        @.dataConfig.get('groupColor') group
      .on "click", () ->
        console.log "click plot", arguments

    lines

  drawPlots: ( ) ->

    plots = @.chart.selectAll ".plot"
        .data @._dataModels
      .enter().append "circle"
        .attr "class", "plot"
        .attr "cy", ( model, index ) =>
          @.y @.yAxisData[index]
        .attr "cx", ( model, index ) => 
          @.xPix @.xAxisData[index]
        .attr "r", ( model, index) =>
          @.dataConfig.get('size') model
        .style "stroke", ( model, index ) =>
          @.dataConfig.get('color') @.dataCollection, model
        .style "fill", ( model, index ) =>
          @.dataConfig.get("color") @.dataCollection, model
        .on "click", ( model ) ->
          @.trigger "CLICK:CHART", model
        .on "mouseover", ( model, index) =>
          data = 
            x: model.get @.dataConfig.get('xKey')
            y: model.get @.dataConfig.get('yKey')
            color: @.dataConfig.get('color') @.dataCollection, model
            group: @.dataConfig.get('group') model
            size: @.dataConfig.get('size') model

          @.showTooltip model, data
        .on "mouseout", @.hideTooltip

    plots