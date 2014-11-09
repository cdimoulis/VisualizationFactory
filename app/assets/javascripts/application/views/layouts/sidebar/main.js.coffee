App.View.extend
  name: "layouts/sidebar/main"
  attributes:
    "class": "sidebar navbar-inverse"
  first_pages: ["pages/home","pages/tables","pages/outcome_grid", "pages/yeargraphs", "pages/course_level_graphs", "pages/student_flow"]
  last_pages: ["pages/test"]

  initialize: () ->

    p = _.keys App.Pages

    p = _.difference p, @.first_pages

    p = _.difference p, @.last_pages

    @.pagenames = @.first_pages.concat( p ).concat @.last_pages

    @