@.Thorax.templates = @.Handlebars.templates = @.HandlebarsTemplates

@.App = new Application
  Templates: @.Thorax.templates

  initialize: () ->

    @.createViewport "left-panel"
    @.createViewport "page"
    @.createViewport "footer"

    @

  ready: () ->

    Backbone.history.start
      pushState: false
      root: "/"
      silent: true

    @.bindViewportToElement "left-panel", "#left-panel"
    @.bindViewportToElement "page", "#page"

  main: () ->
    currentPage = new App.Model
      page_name: window.location.hash.replace("#","")

    App.set "App:CurrentPage", currentPage

    @.getViewport("left-panel").setView(new App.Views["layouts/sidebar/main"]())