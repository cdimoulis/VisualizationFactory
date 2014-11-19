App.Page.extend
  name: "pages/level_outcome_treemap"
  title: "Course Level and Outcome Treemap"
  events:
    'change select.year': 'setYear'

  initialize: () ->

    _.bindAll @, "parseData", "setYear", "pareseAsterPlot"

    @.categories = App.get "App:Categories"
    @.courses = App.get "App:Courses"
    @.outcomes = App.get "App:Outcomes"
    @.scheduledCourses = App.get "App:ScheduledCourses"
    @.scores = App.get "App:Scores"

    @.year = "2012/2013"
    @.levels = [200,300,400]

    @.years = ["2012/2013","2011/2012","2010/2011","2009/2010"]

    @.asterData = new App.Model()
    @.asterData.set "data", []

    @.treeData = new App.Model()

    @.listenTo @.treeData, "change", @.pareseAsterPlot

    @.treeConfig = new App.Model
      key: "name"
      size: "count"
      height: 500
      'margin':
        "top": 10
        "right": 10
        "bottom": 10
        "left": 10
      label: (model) ->
        model.get(@.key).capitalize()
      color: (index1,index2) ->
        if !_.isEqual( index1, "level_outcome_treemap")
          index2 = index1
        index = ["200","300","400"].indexOf(index2)
        d3.scale.category10().range()[index]

    @.asterConfig = new App.Model
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
        "<header>
          <div>Course: #{data.num}</div>
          <div>Semester: #{data.semester}</div>
        </header>
         <div>
          <div>Score: #{data.score}</div>
          <div>Class Size: #{data.classSize}</div>
         </div>
        "

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

  pareseAsterPlot: () ->

    outcome = @.outcomes.findWhere {"text": @.treeData.get "name1"}
    level = @.treeData.get "name2"

    if !_.isUndefined( outcome ) and !_.isUndefined( level )

      selectedData = []

      courses = @.scheduledCourses.getSchoolYear @.year

      courses = _.filter courses, (course) =>
        num = @.courses.get( course.get "course_id" ).get "number"
        num = String( Math.floor( (num / 100) ) * 100 )
        _.isEqual level, num


      _.each courses, (schedCourse) =>

        course = @.courses.get schedCourse.get("course_id")

        score = @.scores.findWhere {"sched_course_id": schedCourse.get( "id" ), "outcome_id": outcome.get "id"}

        unless _.isUndefined score
          data = 
            'num': course.get "number"
            'outcome': outcome.get "text"
            'score': score.get 'score'
            'classSize': schedCourse.get 'num_students'
            'semester': schedCourse.get "semester"

          selectedData.push data


      @.asterData.set 'data', selectedData, {silent:true}
      @.asterData.trigger "new"