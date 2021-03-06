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

    @.dataConfig = new App.Models.GraphConfig
      xKey: "classSize"
      yKey: "score"
      height: 500
      group: (model) =>
        level = Math.floor( model.get('num')/100)*100
        level
      yDomain: () ->
        [0,4]
      groupColor: (group) ->
        if _.isEqual group,200
          "#1f77b4"
        else if _.isEqual group,300
          "#2ca02c"
        else
          "#d62728"
      tooltip: (collection, data) =>
        "<header>Course: #{data.get('num')}</header>
         <div>
          <div>Score: #{data.get('score')}</div>
          <div>Num Students: #{data.get('classSize')}</div>
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

    $opt = $("<option>")
    $opt.attr "value", "All"
    $opt.text "All"

    $course.append $opt

    _.each courses, (course) =>
      $opt = $("<option>")
      $opt.attr "value", course.get('id')
      $opt.text course.get('number')

      $course.append $opt

  parseData: (triggerEvent=false) ->

    @.courseData.reset()

    courseFilter = {}
    if !_.isEqual(@.year,'All')
      courseFilter['year'] = @.year
    if !_.isEqual(@.semester,'All')
      courseFilter['semester'] = @.semester
    if !_.isEqual(@.course, "All")
      courseFilter['course_id'] = parseInt @.course

    curCourses = @.scheduledCourses.where courseFilter

    _.each curCourses, (schedCourse) =>

      course = @.courses.get schedCourse.get("course_id")
      level = Math.floor( course.get('number')/100 ) * 100

      if _.isEqual(@.level,"All") or _.isEqual(level,@.level)

        scores = new App.Collections.Scores()

        scoreFilter =
          'scheduled_course_id': schedCourse.get 'id'
          'outcome_id': @.outcome.get 'id'
          
        if !_.isEqual(@.degree,'All')
          scoreFilter['degree_type'] = @.degree
          classSize = schedCourse.get("final_#{@.degree.toLowerCase()}") || 0
        else
          classSize = (schedCourse.get('final_bs') + schedCourse.get('final_ba')) || 0

        scores.set @.scores.where scoreFilter

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

          @.courseData.add data


  setYear: (e) ->
    if _.isUndefined e
      @.year = "All"
    else
      if _.isEqual(e.target.value,"All")
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
      @.outcome = "All"
    else
      if _.isEqual(e.target.value,"All")
        @.outcome = "All"
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
      if _.isEqual(e.target.value,"All")
        @.level = "All"
      else
        @.level = parseInt e.target.value

    @.parseData true

  setCourse: (e) ->
    if _.isUndefined e
      @.course = "All"
    else
      @.course = e.target.value

    @.parseData true