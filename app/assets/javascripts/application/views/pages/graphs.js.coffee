App.Page.extend
  name: "pages/graphs"
  title: "Graphs"

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
      {date: moment("2014-06-12"),val: 16}
      {date: moment("2014-06-15"),val: 30}
      {date: moment("2014-06-25"),val: 6}
      {date: moment("2014-07-01"),val: 2}
      {date: moment("2014-07-20"),val: 6}
      {date: moment("2014-07-22"),val: 56}
    ])

    @.data3 = new App.Collection([
      {num: 1, val: 104}
      {num: 2, val: 543}
      {num: 3, val: 323}
      {num: 4, val: 99}
      {num: 5, val: 242}
      {num: 6, val: 823}
    ])

    @.dataConfig1 = new App.Models.GraphConfig
      xKey: "name"
      yKey: "val"
      xFormat: (x) ->
        x.capitalize()
      color: (collection, model, index) ->
        max = collection.max "val"
        val = model.get "val"
        b = Math.floor( 255 * (val / max) )
        r = Math.floor( b/4 )
        g = Math.floor( b/2 )
        "rgb(#{r},#{g},#{b})"

    @.dataConfig2 = new App.Models.GraphConfig
      xKey: "date"
      yKey: "val"
      xFormat: (x) ->
        moment(x).format("Do MMM YYYY")

    @.dataConfig3 = new App.Models.GraphConfig
      xKey: "num"
      yKey: "val"


    @