App.Page.extend
  name: "pages/yeargraphs"
  title: "School Year Graphs"
  events:
    'change select.year': 'setYear'
    'change input.weighted': 'setWeighted'
    'change select.degree': 'setDegree'

  initialize: () ->

    _.bindAll @, "parseData", "setYear", "setWeighted", 'setDegree'

    @.categories = App.get "App:Categories"
    @.courses = App.get "App:Courses"
    @.outcomes = App.get "App:Outcomes"
    @.scheduledCourses = App.get "App:ScheduledCourses"
    @.scores = App.get "App:Scores"

    @.year = "2013/2014"
    @.degree = "All"
    # @.semester = "fall"

    @.years = ["2013/2014","2012/2013","2011/2012","2010/2011","2009/2010"]

    @.graphData = new App.Collection()

    @.graphConfig = new App.Models.GraphConfig
      xKey: "level"
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


    @.graphConfig2 = new App.Models.GraphConfig
      xKey: "level"
      yKey: "score"
      height: 500
      yDomain: () ->
        [0,4]
      group: (model) ->
        model.get "outcome"
      legend: false
      'tooltip': (collection, model, data) ->
        "<div>
          <div>Max: #{data.max}</div>
          <div>Upper Quart.: #{data.upperQuartile}</div>
          <div>Median: #{data.median}</div>
          <div>Lower Quart.: #{data.lowerQuartile}</div>
          <div>Min: #{data.min}</div>
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

    yrCourses = @.scheduledCourses.getSchoolYear @.year

    # Each scheduled Course
    _.each yrCourses, (schedCourse) =>

      course = @.courses.get schedCourse.get("course_id")

      level = String( Math.floor(course.get("number")/100) * 100 )

      if _.isUndefined tempData[level]
        tempData[level] = {}

      if _.isEqual(@.degree, "All")
        scores = @.scores.where {"scheduled_course_id": schedCourse.get "id"}
      else
        scores = @.scores.where {"scheduled_course_id": schedCourse.get('id'),'degree_type': @.degree}

      # Each score for a scheduled Course
      _.each scores, (score) =>
        outcome = @.outcomes.get( score.get "outcome_id").get "text"

        if _.isUndefined tempData[level][outcome]
          tempData[level][outcome] = []

        if _.isEqual(@.degree, "All")
          tempData[level][outcome].push
            score: score.get "score"
            weight: if @.weighted then schedCourse.get("final_bs")+schedCourse.get('final_ba') else 1
        else
          tempData[level][outcome].push
              score: score.get "score"
              weight: if @.weighted then schedCourse.get("final_#{@.degree.toLowerCase()}") else 1



    _.each tempData, (data, level) =>

      _.each data, (d, outcome) =>

        total = d.reduce (memo, obj) ->
          memo + ( obj.score * obj.weight )
        , 0

        weight = d.reduce (memo, obj) ->
          memo + obj.weight
        , 0

        m = new App.Model
          "level": level
          "outcome": outcome
          "score": Math.floor( ( total / weight ) * 100 ) / 100

        @.graphData.add m


  setYear: (e) ->
    if _.isUndefined e
      @.year = @.years[0]
    else
      @.year = e.target.value

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