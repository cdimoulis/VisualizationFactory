App.Page.extend
  name: "pages/course_level_graphs"
  title: "Course Level Graphs"
  events:
    'change select.level': 'setLevel'
    'change input.weighted': 'setWeighted'
    'change select.degree': 'setDegree'
  attributes:
    "style": "height: 200%"

  initialize: () ->

    _.bindAll @, "parseData", "setLevel", "setWeighted"

    @.categories = App.get "App:Categories"
    @.courses = App.get "App:Courses"
    @.outcomes = App.get "App:Outcomes"
    @.scheduledCourses = App.get "App:ScheduledCourses"
    @.scores = App.get "App:Scores"

    @.courseLevel = 200
    @.degree = "All"
    @.years = ["2009/2010", "2010/2011", "2011/2012", "2012/2013", "2013/2014"]

    @.graphData = new App.Collection()

    @.graphConfig = new App.Models.GraphConfig
      xKey: "year"
      yKey: "score"
      height: 500
      yDomain: () ->
        [0,4]
      group: (model) ->
        model.get "outcome"
      controls: false
      'tooltip': (collection, model, data) ->
        "<header>#{model.get('outcome')}</header>
          <div>
            <div>Score: #{model.get('score')}</div>
          </div>
        "
      groupColor: (group) ->
        index = parseInt group.split("-")[1]
        d3.scale.category10().range()[index-1]


    @.parseData()


    @

  parseData: () ->

    @.graphData.reset()
    tempData = {}

    _.each @.years, (year) =>

      courses = new App.Collections.ScheduledCourses()
      courses.set @.scheduledCourses.getSchoolYear year

      if _.isUndefined tempData[year]
        tempData[year] = {}

      levelCourses = courses.filter (schedCourse) =>
        course = @.courses.get schedCourse.get("course_id")
        level = Math.floor( course.get( "number" ) / 100 ) * 100
        _.isEqual level, @.courseLevel

      _.each levelCourses, (schedCourse) =>

        if _.isEqual(@.degree, "All")
          scores = @.scores.where {"scheduled_course_id": schedCourse.get "id"}
        else
          scores = @.scores.where {"scheduled_course_id": schedCourse.get("id"), 'degree_type': @.degree}

        _.each scores, (score) =>
          outcome = @.outcomes.get( score.get "outcome_id").get "text"

          if _.isUndefined tempData[year][outcome]
            tempData[year][outcome] = []

          if _.isEqual(@.degree, "All")
            tempData[year][outcome].push
              score: score.get "score"
              weight: if @.weighted then schedCourse.get("final_bs")+schedCourse.get('final_ba') else 1
          else
            tempData[year][outcome].push
                score: score.get "score"
                weight: if @.weighted then schedCourse.get("final_#{@.degree.toLowerCase()}") else 1


    _.each tempData, (data,year) =>

      _.each data, (d, outcome) =>

        total = d.reduce (memo, obj) ->
          memo + ( obj.score * obj.weight )
        , 0

        weight = d.reduce (memo, obj) ->
          memo + obj.weight
        , 0

        m = new App.Model
          "year": year
          "outcome": outcome
          "score": Math.floor( ( total / weight ) * 100 ) / 100

        @.graphData.add m



  setLevel: (e) ->
    if _.isUndefined e
      @.courseLevel = 200
    else
      @.courseLevel = parseInt e.target.value

    @.parseData()

  setWeighted: (e) ->
    @.weighted = e.target.checked

    @.parseData()

  setDegree: (e) ->
    if _.isUndefined e
      @.degree = "All"
    else
      @.degree = e.target.value

    @.parseData()