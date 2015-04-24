App.Page.extend
  name: "pages/level_outcome_course_treemap"
  title: "Level, Outcome, and Course Treemap"
  events:
    'change select.year': 'setYear'
    'change select.degree': 'setDegree'

  initialize: () ->

    _.bindAll @, "parseData", "setYear"

    @.categories = App.get "App:Categories"
    @.courses = App.get "App:Courses"
    @.outcomes = App.get "App:Outcomes"
    @.scheduledCourses = App.get "App:ScheduledCourses"
    @.scores = App.get "App:Scores"

    @.year = "2013/2014"
    @.degree = "All"
    @.levels = [200,300,400]

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
      color: (index1,index2) ->
        if _.isEqual( typeof(index2), "string" )
          index2 = parseInt index2.split("-")[1]
        # 0066FF
        c200 = ["#003D99","#0047B2","#0052CC","#005CE6","#0066FF","#1975FF","#3385FF","#4D94FF","#66A3FF","#80B2FF","#99C2FF"]
        # ff7f0e
        c300 = ["#994C08","#B2590A","#CC660B","#E6720D","#FF7F0E","#FF8C26","#FF993E","#FFA556","#FFB26E","#FFBF86","#FFCC9F"]
        # 2CA02C
        c400 = ["#1A601A","#1F701F","#238023","#289028","#2CA02C","#41AA41","#56B356","#6BBC6B","#80C680","#96D096","#ABD9AB"]

        colors = {"200": c200,"300":c300,"400":c400}
        colors[ index1 ][ index2 ]



    @.parseData()

    @


  parseData: () ->

    data = 
      "name": "level_outcome_treemap"
      "children": []

    courses = @.scheduledCourses.getSchoolYear @.year

    _.each @.levels, (level) =>

      weights = {}

      levelCourses = courses.filter (schedCourse) =>
        course = @.courses.get schedCourse.get("course_id")
        crsLevel = Math.floor( course.get( "number" ) / 100 ) * 100
        _.isEqual level, crsLevel

      _.each levelCourses, (schedCourse) =>

        course = @.courses.get schedCourse.get( "course_id" )
        if _.isEqual(@.degree,"All")
          scores = @.scores.where {"scheduled_course_id": schedCourse.get "id"}
        else
          scores = @.scores.where {"scheduled_course_id": schedCourse.get("id"), 'degree_type': @.degree}

        _.each scores, (score) =>

          outcome = @.outcomes.get( score.get "outcome_id" ).get "text"


          if _.isUndefined weights[outcome]
            weights[outcome] = {}

          if _.isEqual(@.degree,"All")
            weights[outcome][String( course.get "number" )] = schedCourse.get("final_bs") + schedCourse.get("final_ba")
          else
            weights[outcome][String( course.get "number" )] = schedCourse.get("final_#{@.degree.toLowerCase()}")


      classLevel = 
        "name": String( level )
        "children": []


      _.each weights, (courses,outcome_name) =>

        outcome = 
          "name": outcome_name
          "children": []

        _.each courses, (weight, crsNum) =>

          outcome.children.push
            "name": crsNum
            "weight": weight

        classLevel.children.push outcome

      data.children.push classLevel


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