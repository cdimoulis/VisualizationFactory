App.Page.extend
  name: "pages/outcome_grid"
  title: "Outcome Grid"
  events:
    'change select.year': 'setYear'
    'change select.semester': "setSemester"

  initialize: () ->

    _.bindAll @, "onViewDidLoad", "setYear", "setSemester"

    @.categories = new App.Collections.Categories()
    @.courses = new App.Collections.Courses()
    @.outcomes = new App.Collections.Outcomes()
    @.scheduledCourses = new App.Collections.ScheduledCourses()
    @.scores = new App.Collections.Scores()

    @.categories.fetch()
    @.courses.fetch()
    @.outcomes.fetch()
    @.scheduledCourses.fetch()
    @.scores.fetch()

    @.years = []
    @.gridConfig = new App.Model
      year: 2013
      semester: "fall"

    _.each _.range(10), (num) =>
      @.years.push @.gridConfig.get('year')-num


    @

  onViewDidLoad: () ->

  setYear: (e) ->
    if _.isUndefined e
      @.gridConfig.set 'year', @.years[0]
    else
      @.gridConfig.set 'year', parseInt e.target.value


  setSemester: (e) ->
    if _.isUndefined e
      @.gridConfig.set 'semester', 'fall'
    else
      @.gridConfig.set 'semester', e.target.value