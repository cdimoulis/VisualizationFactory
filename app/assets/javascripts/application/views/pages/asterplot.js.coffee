App.Page.extend
  name: "pages/asterplot"
  title: "Aster Plot"
  events:
    'change select.year': 'setYear'
    'change select.semester': "setSemester"
    'change select.outcome': 'setOutcome'
    'change input.weighted': 'setWeighted'
    'change select.degree': 'setDegree'

  initialize: () ->

    _.bindAll @, "parseData", "setYear", "setSemester", "setOutcome", "setWeighted"

    @.scores = App.get 'App:Scores'
    @.outcomes = App.get 'App:Outcomes'
    @.outcome = @.outcomes.get 1

    @.degree = "All"
    @.year = 2014
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
        "<header>Course: #{data.num}</header>
         <div>
          <div>Score: #{data.score}</div>
          <div>Class Size: #{data.classSize}</div>
         </div>
        "


    @.parseData()

    @

  parseData: (triggerEvent=false) ->

    selectedData = []
    curCourses = App.get('App:ScheduledCourses').where {"year": @.year, "semester": @.semester}


    _.each curCourses, (schedCourse) =>

      course = App.get("App:Courses").get schedCourse.get("course_id")

      scores = new App.Collections.Scores()

      if _.isEqual(@.degree,"All")
        scores.set @.scores.where( {"scheduled_course_id": schedCourse.get("id"), "outcome_id": @.outcome.get('id')} )
        classSize = schedCourse.get('final_bs') + schedCourse.get('final_ba')
      else
        scores.set @.scores.where( {"scheduled_course_id": schedCourse.get("id"), "outcome_id": @.outcome.get('id'), 'degree_type': @.degree} )
        classSize = schedCourse.get('final_#{@.degree.toLowerCase()}')

      score = scores.reduce (memo,s) =>
        memo + parseFloat(s.get('score'))
      ,0

      if !_.isEqual(scores.length,0)
        score /= scores.length

      unless _.isUndefined( score ) or _.isEqual(score, 0)
        data =
          "num": course.get "number" 
          "outcome": @.outcome.get("text")
          "score": score
          "classSize": if @.weighted then classSize else 1

        selectedData.push data

    @.scoreData.set "data", selectedData, {silent: triggerEvent}

    if triggerEvent
      @.scoreData.trigger "new"

  setYear: (e) ->
    if _.isUndefined e
      @.year = @.years[0]
    else
      @.year = parseInt e.target.value

    @.parseData true


  setSemester: (e) ->
    if _.isUndefined e
      @.semester = "fall"
    else
      @.semester = e.target.value

    @.parseData true


  setOutcome: (e) ->
    if _.isUndefined e
      @.outcome = App.get("App:Outcomes").get 1
    else
      @.outcome = App.get("App:Outcomes").get parseInt e.target.value

    @.parseData true

  setWeighted: (e) ->
    @.weighted = e.target.checked

    @.parseData()

  setDegree: (e) ->
    if _.isUndefined e
      @.degree = "All"
    else
      @.degree = e.target.value

    @.parseData(true)