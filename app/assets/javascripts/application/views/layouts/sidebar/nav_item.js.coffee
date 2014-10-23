App.View.extend
  name: "layouts/sidebar/nav_item"
  tagName: "li"
  events:
    'click a': 'onClick'

  initialize: () ->

    _.bindAll @, "onViewDidLoad", "onClick", "pageChange"

    @.page = new App.Pages[@.pagename]()
    @.page_link = "##{@.page.name}"

    @.listenTo App.get("App:CurrentPage"), "change", @.pageChange

    if _.isEqual @.page.name, App.get("App:CurrentPage").get("page_name")
      @.$el.addClass "active"

    @

  onViewDidLoad: () ->

  onClick: (e) ->
    e.preventDefault()

    App.navigate(@.page.name)

  pageChange: () ->
    if _.isEqual @.page.name, App.get("App:CurrentPage").get("page_name")
      @.$el.addClass "active"
    else
      @.$el.removeClass "active"