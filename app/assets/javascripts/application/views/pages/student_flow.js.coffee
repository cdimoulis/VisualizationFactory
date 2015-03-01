App.Page.extend
  name: "pages/student_flow"
  title: "Student Flow"
  events:
    'change select.outcome': 'setOutcome'
    'change input.weighted': 'setWeighted'
  attributes:
    "style": "height: 200%"

  initialize: () ->

    _.bindAll @, "parseData", "setOutcome", "setWeighted"

    @.categories = App.get "App:Categories"
    @.courses = App.get "App:Courses"
    @.outcomes = App.get "App:Outcomes"
    @.scheduledCourses = App.get "App:ScheduledCourses"
    @.scores = App.get "App:Scores"

    @.outcome = @.outcomes.get 1

    @.levels = [200,300,400]
    @.years = ["2009/2010", "2010/2011", "2011/2012", "2012/2013"]

    @.graphData = new App.Collection()

    @.graphConfig = new App.Models.GraphConfig
      xKey: "level"
      yKey: "score"
      height: 500
      yDomain: () ->
        [0,4]
      group: (model) ->
        model.get "year"
      controls: false
      'tooltip': (collection, model, data) ->
        "<header>#{model.get('outcome')}</header>
          <div>
            <div>Score: #{model.get('score')}</div>
          </div>
        "
      groupColor: (group) =>
        yr = parseInt group.split("Started Fall ")[1]
        yrGroup = "#{yr}/#{yr+1}"
        index = @.years.indexOf(yrGroup)
        d3.scale.category10().range()[index]


    @.parseData()


    @

  parseData: () ->

    @.graphData.reset()
    tempData = {}

    _.each @.years, (year, yrindex) =>


      _.each @.levels, (level, levelindex) =>

        currYear = @.years[yrindex+levelindex]

        unless _.isUndefined currYear

          if _.isUndefined tempData[year]
            tempData[year] = {}

          if _.isUndefined tempData[year][String(level)]
            tempData[year][String(level)] = []

          courses = new App.Collections.ScheduledCourses()
          courses.set @.scheduledCourses.getSchoolYear currYear

          levelCourses = courses.filter (schedCourse) =>
            course = @.courses.get schedCourse.get("course_id")
            crsLevel = Math.floor( course.get( "number" ) / 100 ) * 100
            _.isEqual level, crsLevel

          _.each levelCourses, (schedCourse) =>
            scores = @.scores.where {"scheduled_course_id": schedCourse.get( 'id' ), "outcome_id": @.outcome.get 'id'}

            _.each scores, (score) =>

              tempData[year][String(level)].push
                score: score.get "score"
                weight: if @.weighted then schedCourse.get('num_students') else 1




    _.each tempData, (data,year) =>

      _.each data, (d, level) =>

        total = d.reduce (memo, obj) ->
          memo + ( obj.score * obj.weight )
        , 0

        weight = d.reduce (memo, obj) ->
          memo + obj.weight
        , 0

        if total and weight

          m = new App.Model
            "year": "Started Fall #{year.split('/')[0]}"
            "level": level
            "score": Math.floor( ( total / weight ) * 100 ) / 100

          @.graphData.add m



  setOutcome: (e) ->
    if _.isUndefined e
      @.outcome = App.get("App:Outcomes").get 1
    else
      @.outcome = App.get("App:Outcomes").get parseInt e.target.value

    @.parseData()

  setWeighted: (e) ->
    @.weighted = e.target.checked

    @.parseData() 