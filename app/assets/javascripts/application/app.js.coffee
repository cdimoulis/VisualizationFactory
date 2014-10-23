@.Application = (options) ->

  _viewports = {}
  _routers = 
    "application": null
  _boundViews = {}

  # Store application's items
  @.Models = {}
  @.Collections = {}
  @.Views = {}
  @.Pages = {}
  @.Routers = {}

  # Application definitions of backbone/thorax objects
  # Many are defined in other files
  @.View = Thorax.View.extend()
  @.Page = @.View.extend()

  @.Viewport = Thorax.LayoutView.extend
    attributes:
      "style": "height: inherit;"

  @.Collection = Thorax.Collection.extend()
  @.Model = Thorax.Model.extend()


  # Viewports place views on in the DOM
  @.getViewport = (name) ->
    if !_.has( _viewports, name)
      throw new Error "getViewport(): no viewport named #{name}."
      return

    _.result _viewports, name

  @.createViewport = (name) ->
    if !_.has(_viewports, name)
      _viewports[name] = new @.Viewport()
    else
      throw new Error "createViewport(): viewport named #{name} already exists."

  @.bindViewportToElement = (name, Selector) ->
    if _.has(_viewports, name)
      @.appendViewToElement Selector, name, @.getViewport name
    else
      throw new Error "bindViewportToElement(): no viewport named #{name}."

  @.appendViewToElement = (Selector, name, view) ->
    _boundViews[name] = 
      'view': view
      'name': name
      'selector': Selector
      '$el': $(Selector)

    view.appendTo Selector


  # Router functions
  @.navigate = (route) ->
    _routers['application'].navigate route, {trigger:true}


  # Store specific views, models, collections in hash
  _registerClass = (cls, hash) ->
    $uper = cls.extend
    cls.extend = () ->
      child = $uper.apply @, arguments
      if (child.prototype.name)
        hash[child.prototype.name] = child

      child

  _registerClass @.Model, @.Models
  _registerClass @.Collection, @.Collections
  _registerClass @.View, @.Views
  _registerClass @.Page, @.Pages
  _registerClass Backbone.Router, @.Routers


  # Shared Data Objects
  _SharedObjects = {}

  @.set = ( key, data ) ->
    _SharedObjects[key] = data

  @.get = ( key ) ->
    _SharedObjects[key]

  @.getSharedNames = () ->
    _.keys _SharedObjects




  # Application functions to run
  _.extend @,
    # This is run when the application is created
    initialize: () ->
      null

    # This is run when the DOM is ready before main
    ready: () ->
      null

    # This will be run when DOM is ready
    main: () ->
      null

  _.extend @, options


  @.initialize.call @


  # Waits until page has loaded
  $ =>

    _.defer () =>
      if _.has(@.Routers, "Application")
        _routers['application'] = new @.Routers.Application()
        
      location = window.location.hash.replace("#","")

      if _.isEmpty location
        location = "pages/home"

      # Navigating to current hash will not draw page. First navigate away
      @.navigate("/") and @.navigate location

    @.ready.call @
    @.main.call @


  @