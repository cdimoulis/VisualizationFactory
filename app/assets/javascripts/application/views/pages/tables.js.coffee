App.Page.extend
  name: "pages/tables"
  title: "Tables"

  initialize: () ->


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

    @