App.View.extend 
  name: 'components/table/main'
  ignoreList: ["id", "created_at","updated_at"]

  initialize: () ->

    _.bindAll @, "onViewDidLoad", "updateView", "parseData"

    @.parseData()

    @

  onViewDidLoad: () ->


  updateView: () ->
    @.parseData()
    @.render()

  parseData: () ->

    @.tableData = []

    unless _.isEqual @.tableCollection.length, 0
      first = @.tableCollection.first()

      keys = _.keys first.attributes

      @.titles = _.difference keys, @.ignoreList

      @.tableCollection.each (model) =>
        data = []
        _.each @.titles, (title) =>
          data.push model.get title 

        @.tableData.push data
