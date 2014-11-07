App.Page.extend
  name: "pages/asterplot"
  title: "Aster Plot"
  events:
    'change select.year': 'setYear'
    'change select.semester': "setSemester"
    'change select.outcome': 'setOutcome'

  initialize: () ->

    _.bindAll @, "parseData", "setYear", "setSemester", "setOutcome"

    ### TEST DATA ###

    @.data = [
      {name: "joe", val: 8.3, weight:1}
      {name: "dan", val: 15.7, weight:.75}
      {name: "tony", val: 4, weight:.5}
      {name: "kasie", val: 42.5, weight:1}
      {name: "chris", val: 23.12, weight:.6}
      {name: "kirk", val: 16, weight:.25}
    ]

    @.scores = App.get 'App:Scores'
    @.outcomes = App.get 'App:Outcomes'
    @.outcome = @.outcomes.get 1


    @.year = 2013
    @.semester = "fall"

    @.years = []
    _.each _.range(10), (num) =>
      @.years.push @.year-num



    @.scoreData = new App.Model()

    @.dataConfig = new App.Model
      key: "num"
      value: "score"
      weightKey: "classSize"
      height: 500
      maxValue: 4
      'margin':
        "top": 25
        "right": 10
        "bottom": 10
        "left": 10
      color: (collection, model, index) ->
        d3.scale.category10().range()[index]
      tooltip: (collection, data) =>
        "<header>#{data.num}</header>
         <div>
          <div>Score:#{data.score}</div>
          <div>Size:#{data.classSize}</div>
         </div>
        "


    @.parseData()

    @

  parseData: () ->

    selectedData = []
    curCourses = App.get('App:ScheduledCourses').where {"year": @.year, "semester": @.semester}


    _.each curCourses, (schedCourse) =>

      course = App.get("App:Courses").get schedCourse.get("course_id")

      scores = new App.Collections.Scores()
      scores.set @.scores.where( {"sched_course_id": schedCourse.get "id"} )

      score = scores.findWhere {"outcome_id": @.outcome.get "id"}

      unless _.isUndefined( score )
        data =
          "num": course.get "number" 
          "outcome": @.outcome.get("text")
          "score": score.get("score")
          "classSize": 1   # schedCourse.get 'num_students'

        selectedData.push data

    @.scoreData.set "data", selectedData

  setYear: (e) ->
    if _.isUndefined e
      @.year = @.years[0]
    else
      @.year = parseInt e.target.value

    @.parseData()


  setSemester: (e) ->
    if _.isUndefined e
      @.semester = "fall"
    else
      @.semester = e.target.value

    @.parseData()


  setOutcome: (e) ->
    if _.isUndefined e
      @.outcome = App.get("App:Outcomes").get 1
    else
      @.outcome = App.get("App:Outcomes").get parseInt e.target.value

    @.parseData()