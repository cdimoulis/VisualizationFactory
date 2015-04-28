App.Page.extend
  name: "pages/outcome_course_treemap"
  title: "Outcome and Courses Treemap"
  events:
    'change select.year': 'setYear'
    'change select.degree': 'setDegree'

  initialize: () ->

    _.bindAll @, "parseData", "setYear", "setDegree"

    @.categories = App.get "App:Categories"
    @.courses = App.get "App:Courses"
    @.outcomes = App.get "App:Outcomes"
    @.scheduledCourses = App.get "App:ScheduledCourses"
    @.scores = App.get "App:Scores"

    @.degree = "All"
    @.year = "2013/2014"
    @.years = ["2013/2014","2012/2013","2011/2012","2010/2011","2009/2010"]

    @.treeData = new App.Model()

    @.dataConfig = new App.Model
      key: "name"
      size: "weight"
      height: 500
      'margin':
        "top": 10
        "right": 10
        "bottom": 10
        "left": 10
      label: (model) ->
        model.get(@.key).capitalize()
      color: (index1, index2) ->
        if !_.isEqual( index1, "level_outcome_treemap" )
          index2 = index1
        index = App.get("App:Outcomes").pluck("text").indexOf( index2 )
        d3.scale.category10().range()[index]

    @.parseData()

    @


  parseData: () ->

    data = 
      "name": "level_outcome_treemap"
      "children": []

    courses = @.scheduledCourses.getSchoolYear @.year

    @.outcomes.each (outcome) =>

      counts = {}

      _.each courses, (schedCourse) =>
        scores = @.scores.where {"outcome_id": outcome.get("id"), "scheduled_course_id": schedCourse.get "id"}

        if !_.isEmpty(scores)
          course = @.courses.get schedCourse.get( "course_id" )

          if _.isEqual(@.degree,"All")
            counts[String( course.get "number" )] = schedCourse.get("final_bs") + schedCourse.get('final_ba')
          else
            counts[String( course.get "number" )] = schedCourse.get("final_#{@.degree.toLowerCase()}")
      




      children = []

      _.each counts, (weight,course_num) =>

        children.push
          "name": course_num
          "weight": weight

      data.children.push
        "name": outcome.get "text"
        "children": children

    @.treeData.set "data", data

  setYear: (e) ->
    if _.isUndefined e
      @.year = @.years[0]
    else
      @.year = e.target.value

    @.parseData()

  setDegree: (e) ->
    if _.isUndefined e
      @.degree = "All"
    else
      @.degree = e.target.value

    @.parseData()
