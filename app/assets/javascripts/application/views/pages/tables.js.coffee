App.Page.extend
  name: "pages/tables"
  title: "Tables"

  initialize: () ->


    @.categories = App.get "App:Categories"
    @.courses = App.get "App:Courses"
    @.outcomes = App.get "App:Outcomes"
    @.scheduledCourses = App.get "App:ScheduledCourses"
    @.scores = App.get "App:Scores"
    @.gradeCounts = App.get 'App:GradeCounts'

    @