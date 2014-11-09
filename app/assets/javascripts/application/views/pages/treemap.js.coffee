App.Page.extend
  name: "pages/treemap"
  title: "Treemap"

  initialize: () ->

    ### TEST DATA ###
    @.data1 = new App.Collection([
      {name: "joe", val: 8, other: "chris"}
      {name: "dan", val: 15, other: "naomi"}
      {name: "tony", val: 4, other: "esther"}
      {name: "kasie", val: 42, other: "james"}
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
      {name: "shirt", val: 23}
      {name: "pants", val: 27}
      {name: "gloves", val: 11}
      {name: "hat", val: 5}
      {name: "shoes", val: 17}
      {name: "socks", val: 10}
    ])

    # @.data = new App.Collection([
    #   @.data1
    #   @.data2
    #   @.data3
    # ])

    @.data = 
      name: "treedata"
      children:[
        {name: "People"
        children:[
          {name: "joe", val: 8, other: "chris"}
          {name: "dan", val: 15, other: "naomi"}
          {name: "tony", val: 4, other: "esther"}
          {name: "kasie", val: 42, other: "james"}
          {name: "chris", val: 23, other: "gabe"}
          {name: "kirk", val: 16, other: "natalie"}
        ]}
        {name: "Food"
        children:[
          {name: "pizza", val: 32}
          {name: "burger", val: 5}
          {name: "ham", val: 12}
          {name: "taco", val: 29}
          {name: "fish", val: 20}
          {name: "chicken", val: 16}
        ]}
        {name: "Clothes"
        children:[
          {name: "shirt", val: 23}
          {name: "pants", val: 27}
          {name: "gloves", val: 11}
          {name: "hat", val: 5}
          {name: "shoes", val: 17}
          {name: "socks", val: 10}
        ]}
      ]

    @.treeData = new App.Model()
    @.treeData.set "data", @.data


    @.dataConfig = new App.Model
      key: "name"
      size: "val"
      height: 500
      'margin':
        "top": 10
        "right": 10
        "bottom": 10
        "left": 10
      category: (index) ->
        ['one','two','three'][index]
      label: (model) ->
        model.get(@.key).capitalize()
      color: (index1, index2) ->
        if !_.isEqual( index1, "treedata" )
          index2 = index1
        index = ['People','Food','Clothes'].indexOf(index2)
        d3.scale.category10().range()[index]


    @