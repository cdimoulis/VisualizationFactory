App.View.extend 
  name: 'components/outcome_grid/main'

  initialize: () ->

    _.bindAll @, "onViewDidLoad", "updateView", "parseData"

    @.listenTo @.gridConfig, "change", @.updateView
    @.listenTo @.outcomes, "sync", @.updateView
    @.listenTo @.courses, "sync", @.updateView
    @.listenTo @.scheduledCourses, "sync", @.updateView
    @.listenTo @.scores, "sync", @.updateView

    
    @

  onViewDidLoad: () ->


  updateView: () ->
    @.parseData()
    @.render()


  parseData: () ->

    @.gridData = []
    @.totalData = [0,0,0,0,0,0,0,0,0,0]
    yearCourses = @.scheduledCourses.where {"year": @.gridConfig.get( 'year' ), "semester": @.gridConfig.get( 'semester' )}

    _.each yearCourses, (yrcourse) =>
      data = {}

      course = @.courses.get yrcourse.get('course_id')
      data.course = course.get 'number'

      data.outcome = []
      _.each _.range(10), (num) ->
        data.outcome[num] = false

      scores = @.scores.where {"sched_course_id": yrcourse.get 'id'}

      _.each scores, (score) =>
        data.outcome[score.get('outcome_id')-1] = true
        @.totalData[score.get('outcome_id')-1]++

      @.gridData.push data
