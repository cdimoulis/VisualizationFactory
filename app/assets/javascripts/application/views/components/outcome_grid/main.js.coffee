App.View.extend 
  name: 'components/outcome_grid/main'

  initialize: () ->

    _.bindAll @, "onViewDidLoad", "updateView", "parseData"

    @.listenTo @.gridConfig, "change", @.updateView

    @.parseData()
    
    @

  onViewDidLoad: () ->


  updateView: () ->
    @.parseData()
    @.render()


  parseData: () ->

    @.gridData = []
    @.totalData = [0,0,0,0,0,0,0,0,0,0]
    yearCourses = @.scheduledCourses.where {"year": @.gridConfig.get( 'year' ), "semester": @.gridConfig.get( 'semester' )}
    degree = @.gridConfig.get 'degree'

    _.each yearCourses, (yrcourse) =>
      data = {}

      course = @.courses.get yrcourse.get('course_id')
      data.course = course.get 'number'

      data.outcome = []
      _.each _.range(10), (num) ->
        data.outcome[num] = false

      if _.isEqual(degree,"All")
        scores = @.scores.where {"scheduled_course_id": yrcourse.get 'id'}
      else
        scores = @.scores.where {"scheduled_course_id": yrcourse.get('id'),'degree_type': degree}

      _.each scores, (score) =>
        data.outcome[score.get('outcome_id')-1] = true
        @.totalData[score.get('outcome_id')-1]++

      @.gridData.push data
