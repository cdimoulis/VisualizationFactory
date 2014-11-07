App.Page.extend
  name: "pages/asterplot"
  title: "Aster Plot"

  initialize: () ->

    ### TEST DATA ###

    @.data = [
      {name: "joe", val: 8, weight:1}
      {name: "dan", val: 15, weight:1}
      {name: "tony", val: 4, weight:1}
      {name: "kasie", val: 42, weight:1}
      {name: "chris", val: 23, weight:1}
      {name: "kirk", val: 16, weight:1}
    ]


    @.dataConfig = new App.Model
      key: "name"
      size: "val"
      height: 500
      maxScore: 50
      'margin':
        "top": 10
        "right": 10
        "bottom": 10
        "left": 10
      color: (collection, model, index) ->
        d3.scale.category10().range()[index]


    @