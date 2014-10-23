App.View.extend
  name: "layouts/sidebar/main"
  attributes:
    "class": "sidebar navbar-inverse"

  initialize: () ->

    @.pagenames = _.keys App.Pages

    @