App.Page.extend
  name: "pages/outcome_grid"
  title: "Outcome Grid"
  events:
    'change select.year': 'setYear'
    'change select.semester': "setSemester"

  initialize: () ->

    _.bindAll @, "onViewDidLoad", "setYear", "setSemester"

    @.categories = App.get("App:Categories")
    @.courses = App.get("App:Courses")
    @.outcomes = App.get("App:Outcomes")
    @.scheduledCourses = App.get("App:ScheduledCourses")
    @.scores = App.get("App:Scores")

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