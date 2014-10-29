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