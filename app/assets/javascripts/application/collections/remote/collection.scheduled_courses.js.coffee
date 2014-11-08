App.Collection.extend
  model: App.Models.ScheduledCourse
  name: 'ScheduledCourses'

  getSchoolYear: (schoolYear) ->

    yr1 = parseInt schoolYear.split("/")[0]
    yr2 = parseInt schoolYear.split("/")[1]

    fallYr1 = @.where {"year": yr1, "semester": "fall"}
    springYr2 = @.where {"year": yr2, "semester": "spring"}

    fallYr1.concat springYr2