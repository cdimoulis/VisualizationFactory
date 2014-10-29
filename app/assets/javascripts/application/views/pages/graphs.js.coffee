App.Page.extend
  name: "pages/graphs"
  title: "Graphs"

  initialize: () ->

    ### TEST DATA ###
    @.data1 = new App.Collection([
      {name: "joe", val: 8}
      {name: "dan", val: 15}
      {name: "tony", val: 4}
      {name: "kasie", val: 42}
      {name: "chris", val: 23}
      {name: "kirk", val: 16}
      {name: "jon", val: 37}
      {name: "rich", val: 27}
      {name: "jamie", val: 10}
      {name: "naomi", val: 31}
      {name: "esther", val: 23}
      {name: "james", val: 29}
      {name: "gabe", val: 3}
      {name: "natalie", val: 11}
      {name: "matt", val: 19}
      {name: "emily", val: 25}
      {name: "george", val: 33}
      {name: "heather", val: 14}
      {name: "errin", val: 5}
      {name: "josh", val: 13}
      {name: "zac", val: 41}
      {name: "brent", val: 38}
      {name: "priscilla", val: 22}
      {name: "betty", val: 29}
    ])

    @.data2 = new App.Collection([ 
      {date: moment("2014-06-12"),val: 16, group:1}
      {date: moment("2014-06-15"),val: 30, group:1}
      {date: moment("2014-06-25"),val: 6, group:1}
      {date: moment("2014-07-01"),val: 2, group:1}
      {date: moment("2014-07-20"),val: 6, group:1}
      {date: moment("2014-07-22"),val: 36, group:1}
      {date: moment("2014-06-12"),val: 6, group:2}
      {date: moment("2014-06-15"),val: 9, group:2}
      {date: moment("2014-06-25"),val: 17, group:2}
      {date: moment("2014-07-01"),val: 31, group:2}
      {date: moment("2014-07-20"),val: 12, group:2}
      {date: moment("2014-07-22"),val: 24, group:2}
      {date: moment("2014-06-12"),val: 32, group:3}
      {date: moment("2014-06-15"),val: 28, group:3}
      {date: moment("2014-06-25"),val: 19, group:3}
      {date: moment("2014-07-01"),val: 23, group:3}
      {date: moment("2014-07-20"),val: 12, group:3}
      {date: moment("2014-07-22"),val: 25, group:3}
    ])

    @.data3 = new App.Collection([
      {num: 1, val: 104}
      {num: 2, val: 543}
      {num: 3, val: 323}
      {num: 4, val: 99}
      {num: 5, val: 242}
      {num: 6, val: 823}
      {num: 3, val: 422}
      {num: 5, val: 644}
      {num: 2, val: 600}
      {num: 4, val: 131}
      {num: 1, val: 783}
      {num: 6, val: 200}
    ])

    @.data4 = new App.Collection()

    for i in [0..500] by 1
      m = new App.Model
        num: Math.floor(Math.random()*500)
        val: Math.floor(Math.random()*1000)
      @.data4.add m




    @.dataConfig1 = new App.Models.GraphConfig
      xKey: "name"
      yKey: "val"
      height: 500
      xRotate: 30
      legend: false
      yDomain: (collection) ->
        [0, _.max(collection.pluck('val'))+100]
      'margin':
        "top": 50
        "right": 25
        "bottom": 75
        "left": 75
      xFormat: (x) ->
        x.capitalize()
      color: (collection, model) ->
        models = collection.models
        d3.scale.category20().range().concat(d3.scale.category20b().range())[models.indexOf model]
      group: (model) ->
        model.get "name"


    @.dataConfig2 = new App.Models.GraphConfig
      xKey: "date"
      yKey: "val"
      # legend: false
      group: (model) ->
        model.get "group"
      xFormat: (x) ->
        moment(x).format("Do MMM YYYY")
      size: (model) ->
        15
      groupColor: (group) ->
        c = {1:"#1f77b4",2:"#2ca02C",3:"#d62728"}
        c[group]

    groups = ["A","B"]
    @.dataConfig3 = new App.Models.GraphConfig
      xKey: "num"
      yKey: "val"
      height: 500
      # xDomain: (collection) ->
      #   [0,7]
      # yDomain: (collection) ->
      #   [0,900]
      xFormat: (x) ->
        d3.format("d")(x)
      xLabel: (xKey) ->
        "Monkeys"
      size: (model) ->
        model.get("num") *2 + 8
      group: (model) ->
        val = model.get "val"
        num = model.get 'num'

        if num > 8 and val > 200
          "A"
        else if num > 4 and val > 100
          "B"
        else
          "C"

      groupColor: (group) ->
        if _.isEqual "A", group
          "#1f77b4"
        else if _.isEqual "B", group
          "#2ca02c"
        else
          "#d62728"

    @.dataConfig4 = new App.Models.GraphConfig
      xKey: "num"
      yKey: "val"
      height: 500
      xLabel: (xKey) ->
        "Monkeys"
      size: (model) ->
        num = model.get "num"
        val = model.get "val"

        10 * (num*val/500000) + 10
        
      group: (model) ->
        val = model.get "val"
        num = model.get 'num'

        if num > 300 and val > 700
          "A"
        else if num > 160 and val > 300
          "B"
        else
          "C"

      groupColor: (group) ->
        if _.isEqual "A", group
          "#1f77b4"
        else if _.isEqual "B", group
          "#2ca02c"
        else
          "#d62728"


    @