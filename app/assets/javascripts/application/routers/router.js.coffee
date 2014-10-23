Backbone.Router.extend
  name: "Application"
  routes:
    "pages/:name": 'loadPage'

  loadPage: (route, op) ->
    fullRoute = "pages/#{route}"
    page = new App.Pages[fullRoute]()
    App.getViewport("page").setView page
    App.get("App:CurrentPage").set "page_name", fullRoute