App.View.extend 
  name: 'components/test/opengl/main'
  tagName: "canvas"
  attributes:
    'height': 500
    'style': 'width: 100%;'
  template: () -> "<canvas id='"

  initialize: () ->
    console.log arguments

    _.bindAll @, "onViewDidLoad", "draw"

    if @.height
      @.$el.attr "height", @.height

    @.on "ready", () =>
      @.draw()


    @

  onViewDidLoad: () ->


  draw: () ->

    @.$el.attr 'width', @.$el.width()
    canvas = @.$el[0]
    window.el = @.$el

    gl = canvas.getContext("webgl")

    console.log gl
    window.gl = gl