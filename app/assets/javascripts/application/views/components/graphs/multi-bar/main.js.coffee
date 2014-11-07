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
  name: 'components/graphs/multi-bar/main'
  required_attrs: ['xKey','yKey']
  _innerPadding: .15
  _edgePadding: .15
  _chartXDataCategory: "discrete"
  groupData: {}
  stacked: false

  postInitialize: () ->

    @

  onViewDidLoad: () ->

  onResize: () ->

  preChart: () ->

    # If chart is stacked, y value for a respective x will be the total of all y for that x
    if @.stacked

      totalY = {}

      _.each @._dataModels, (model) =>
        x = model.get @.dataConfig.get( "xKey" )

        if _.isUndefined( totalY[x] )
          totalY[x] = 0

        totalY[x] += model.get @.dataConfig.get( "yKey" )

      # Set the y axis data to total y for each x key
      domain = [ _.min( @.yAxisData ), _.max( _.values totalY ) ]
      @.yAxisData = domain

  postLegend: ( g, currentRow, currentWidth, rowWidth, xGap, yGap ) ->
    # Draw the controls to toggle stacked below the key

    if @.dataConfig.get "controls"
      selections = ["grouped", "stacked"]
      currentRow++

      control = g.selectAll ".control-item"
        .data selections

      control.enter().append "circle"
        .attr "class", "control-item"
        .attr "cx", (d,i) ->
          xGap-10 + ( i * 75 )
        .attr "cy", (d,i) =>
          @._legendHeight + yGap + 16
        .attr "r", 7
        .style "fill-opacity", (d,i) =>
          if _.isEqual( d, "grouped" )
            if !@.stacked
              return .8
            else
              return 0
          else
            if @.stacked
              return .8
            else
              return 0
        .on "click", (d,i) =>
          if _.isEqual d, "stacked"
            @.stacked = true
          else
            @.stacked = false

          @.updateView()

      control.enter().append "text"
        .attr "class", "control-text"
        .attr "x", (d,i) =>
          xGap + (i * 75)
        .attr "y", (d,i) =>
          @._legendHeight + yGap + 20
        .text (d,i) ->
          d.capitalize()

      @._legendHeight = 14 * currentRow + yGap * currentRow + 32

  doDataDisplay: () ->

    @.setupGroupData()

    @.groupWidth = @.x.rangeBand()

    groups = @.createGroups()

    groups = @.drawGroups groups

  setupGroupData: () ->

    @.groupData = {}
    @.currentGroups = _.difference( @.groups, @._hiddenGroups )

    _.each @._dataModels, (model) =>
      group = @.dataConfig.get( 'group' ) model

      if _.isUndefined @.groupData[group]
        @.groupData[group] = []

      @.groupData[group].push
        model: model
        groupIndex: @.currentGroups.indexOf group

  createGroups: () ->

    groups = @.chart.selectAll ".group-wrapper"
        .data @.currentGroups

    groups

  drawGroups: ( groups ) ->

    currHeight = []

    groups.enter().append "g"
      .selectAll ".bar"
        .data ( group, index) =>
          @.groupData[group]
      .enter().append "rect"
        .attr "class", "bar"
        .attr "y", (obj, index) =>
          yPos = @.y obj.model.get( @.dataConfig.get "yKey" )

          if @.stacked
            height = @.dataConfig.get("height") - @.y obj.model.get( @.dataConfig.get "yKey" )
            if _.isUndefined( currHeight[index] )
              currHeight[index] = 0

            yPos -= currHeight[index]
            currHeight[index] += height
          
          yPos
        .attr "x", (obj, index) =>
          xPos = @.x obj.model.get( @.dataConfig.get "xKey" )
          if !@.stacked
            itemX = @.groupWidth/@.currentGroups.length * obj.groupIndex
            xPos += itemX
          "#{xPos}%"
        .attr "width", (obj, index) =>
          width = @.groupWidth
          if !@.stacked
            width /= @.currentGroups.length
          "#{width}%"
        .attr "height", (obj, index) =>
          @.dataConfig.get("height") - @.y obj.model.get( @.dataConfig.get "yKey" )
        .style "stroke", (obj, index) =>
          @.dataConfig.get('color') @.dataCollection, obj.model
        .style "fill", (obj, index) =>
          @.dataConfig.get('color') @.dataCollection, obj.model
        .on "click", ( obj ) =>
          @.trigger "CLICK:CHART", obj.model
        .on "mouseover", (obj, index) =>
          data = 
            x: obj.model.get @.dataConfig.get('xKey')
            y: obj.model.get @.dataConfig.get('yKey')
            color: @.dataConfig.get('color') @.dataCollection, obj.model
            group: @.dataConfig.get('group') obj.model

          @.showTooltip obj.model, data
        .on "mouseout", @.hideTooltip

    groups