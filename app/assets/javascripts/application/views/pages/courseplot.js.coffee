App.Page.extend
  name: "pages/courseplot"
  title: "Course Plot"
  events:
    'change select.year': 'setYear'
    'change select.semester': "setSemester"
    'change select.outcome': 'setOutcome'
    'change select.degree': 'setDegree'
    'change select.level': 'setLevel'
    'change select.course': 'setCourse'
    'ready': 'setCourseOptions'

  initialize: () ->

    _.bindAll @, 'setCourseOptions', "parseData", "setYear", "setSemester", "setOutcome", "setLevel", "setCourse"

    @.scores = App.get 'App:Scores'
    @.outcomes = App.get 'App:Outcomes'
    @.categories = App.get "App:Categories"
    @.courses = App.get "App:Courses"
    @.scheduledCourses = App.get "App:ScheduledCourses"


    @.outcome = @.outcomes.get 1
    @.degree = "All"
    @.year = "All"
    @.semester = "fall"
    @.level = "All"
    @.course = "All"

    @.years = []
    _.each _.range(10), (num) =>
      @.years.push 2014-num

    @.courseData = new App.Collection()

    @.dataConfig = new App.Model
      xKey: "classSize"
      yKey: "score"
      'size': (model) =>
        5
      height: 500
      group: (model) =>
        console.log model
        level = Math.floor( model.get('num')/100)*100
        console.log 'level',level
        level
      maxValue: 4
      'margin':
        "top": 25
        "right": 10
        "bottom": 10
        "left": 10
      color: (collection, model, index) ->
        d3.scale.category10().range()[index]
      tooltip: (collection, data) =>
        "<header>Course: #{data.get('num')}</header>
         <div>
          <div>Score: #{data.get('score')}</div>
          <div>Class Size: #{data.get('classSize')}</div>
          <hr>
          <div>Semester: #{data.get('semester')}</div>
          <div>Year: #{data.get('year')}</div>
         </div>
        "

    @.parseData()

    @

  setCourseOptions: () ->
    $course = @.$el.find "select.course"

    courses = []
    if _.isEqual(@.level,"All")
      courses = @.courses.models

    else
      courses = @.courses.filter (course) =>
        level = Math.floor( course.get('number')/100) * 100
        _.isEqual(@.level,level)

    $opt = $("option")
    $opt.attr "value", "All"
    $opt.text "All"

    $course.append $opt

    _.each courses, (course) =>
      $opt = $("option")
      $opt.attr "value", course.get('id')
      $opt.text course.get('number')

      $course.append $opt

  parseData: (triggerEvent=false) ->

    courseFilter = {}
    if !_.isEqual(@.year,'All')
      courseFilter['year'] = @.year
    if !_.isEqual(@.semester,'All')
      courseFilter['semester'] = @.semester
    if !_.isEqual(@.course, "All")
      courseFilter['course_id'] = @.courses.findWhere({text:@.course}).get('id')

    curCourses = @.scheduledCourses.where courseFilter


    _.each curCourses, (schedCourse) =>

      course = @.courses.get schedCourse.get("course_id")
      level = Math.floor( course.get('number')/100 ) * 100

      if _.isEqual(@.level,"All") or _.isEqual(level,@.level)

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
          data = new App.Model
            "num": course.get "number" 
            "outcome": @.outcome.get "text"
            "score": score
            "classSize": classSize
            "semester": schedCourse.get 'semester'
            "year": schedCourse.get 'year'

          # selectedData.push data
          @.courseData.add data


    # @.courseData.set "data", selectedData, {silent: triggerEvent}

    if triggerEvent
      @.courseData.trigger "new"

  setYear: (e) ->
    if _.isUndefined e
      @.year = "All"
    else
      @.year = parseInt e.target.value

    @.parseData true


  setSemester: (e) ->
    if _.isUndefined e
      @.semester = "All"
    else
      @.semester = e.target.value

    @.parseData true


  setOutcome: (e) ->
    if _.isUndefined e
      @.outcome = App.get("App:Outcomes").get 1
    else
      @.outcome = App.get("App:Outcomes").get parseInt e.target.value

    @.parseData true

  setDegree: (e) ->
    if _.isUndefined e
      @.degree = "All"
    else
      @.degree = e.target.value

    @.parseData true

  setLevel: (e) ->
    if _.isUndefined e
      @.level = "All"
    else
      @.level = e.target.value

    @.parseData true

  setCourse: (e) ->
    if _.isUndfined e
      @.course = "All"
    else
      @.course = e.target.value