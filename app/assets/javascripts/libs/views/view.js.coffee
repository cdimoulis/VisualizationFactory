Thorax.View = Thorax.View.extend

  onViewDidLoad: () ->
    null

  afterRender: () ->

    if _.has @, "onViewDidLoad"
      _.result @, "onViewDidLoad"