App.Page.extend
  name: "pages/treemap"
  title: "Treemap"

  initialize: () ->

    ### TEST DATA ###
    @.data1 = new App.Collection([
      {name: "joe", val: 8, other: "chris"}
      {name: "dan", val: 15, other: "naomi"}
      {name: "tony", val: 4, other: "esther"}
      {name: "kasie", val: 42, other: "james", color: "#d45454"}
      {name: "chris", val: 23, other: "gabe"}
      {name: "kirk", val: 16, other: "natalie"}
    ])

    @.data2 = new App.Collection([ 
      {name: "pizza", val: 32}
      {name: "burger", val: 5}
      {name: "ham", val: 12}
      {name: "taco", val: 29}
      {name: "fish", val: 20}
      {name: "chicken", val: 16}
    ])


    @.data3 = new App.Collection([
      {name: "pizza", val: 32}
      {name: "burger", val: 5}
      {name: "ham", val: 12}
      {name: "taco", val: 29}
      {name: "fish", val: 20}
      {name: "chicken", val: 16}
    ])

    @.data = new App.Collection([
      @.data1
      @.data2
      @.data3
    ])


    @.dataConfig = new App.Model
      key: "name"
      size: "val"
      'margin':
        "top": 10
        "right": 10
        "bottom": 10
        "left": 10
      category: (index) ->
        ['one','two','three'][index]
      label: (model) ->
        model.get(@.key).capitalize()
      color: (collection, model, index) ->
        d3.scale.category10().range()[index]


    @