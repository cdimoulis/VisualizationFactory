App.Page.extend
  name: "pages/level_outcome_treemap"
  title: "Course Level and Outcome Treemap"
  events:
    'change select.year': 'setYear'

  initialize: () ->

    _.bindAll @, "parseData", "setYear"

    @.categories = App.get "App:Categories"
    @.courses = App.get "App:Courses"
    @.outcomes = App.get "App:Outcomes"
    @.scheduledCourses = App.get "App:ScheduledCourses"
    @.scores = App.get "App:Scores"

    @.year = "2012/2013"
    @.levels = [200,300,400]

    @.years = ["2012/2013","2011/2012","2010/2011","2009/2010"]

    @.treeData = new App.Model()

    @.dataConfig = new App.Model
      key: "name"
      size: "count"
      height: 500
      'margin':
        "top": 10
        "right": 10
        "bottom": 10
        "left": 10
      category: (index) ->
        ['one','two','three'][index]
      label: (model) ->
        model.get(@.key).capitalize()
      color: (collection, model, index) ->
        d3.scale.category10().range()[index]

    @.parseData()

    @


  parseData: () ->

    data = 
      "name": "level_outcome_treemap"
      "children": []

    courses = @.scheduledCourses.getSchoolYear @.year

    _.each @.levels, (level) =>

      counts = {}

      levelCourses = courses.filter (schedCourse) =>
        course = @.courses.get schedCourse.get("course_id")
        crsLevel = Math.floor( course.get( "number" ) / 100 ) * 100
        _.isEqual level, crsLevel

      _.each levelCourses, (schedCourse) =>

        scores = @.scores.where {"sched_course_id": schedCourse.get "id"}

        _.each scores, (score) =>

          outcome = @.outcomes.get( score.get "outcome_id" ).get "text"

          if _.isUndefined counts[outcome]
            counts[outcome] = 0

          counts[outcome]++

      children = []

      _.each counts, (count,outcome) =>

        children.push
          "name": outcome
          "count": count

      data.children.push
        "name": String level
        "children": children

    @.treeData.set "data", data

  setYear: (e) ->
    if _.isUndefined e
      @.year = @.years[0]
    else
      @.year = e.target.value

    @.parseData()