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
      {date: moment("2014-06-12"),val: 16, name: "Chris"}
      {date: moment("2014-06-15"),val: 30, name: "Chris"}
      {date: moment("2014-06-25"),val: 6, name: "Chris"}
      {date: moment("2014-07-01"),val: 2, name: "Chris"}
      {date: moment("2014-07-20"),val: 6, name: "Chris"}
      {date: moment("2014-07-22"),val: 36, name: "Chris"}
      {date: moment("2014-06-12"),val: 6, name: "Dan"}
      {date: moment("2014-06-15"),val: 9, name: "Dan"}
      {date: moment("2014-06-25"),val: 17, name: "Dan"}
      {date: moment("2014-07-01"),val: 31, name: "Dan"}
      {date: moment("2014-07-20"),val: 12, name: "Dan"}
      {date: moment("2014-07-22"),val: 24, name: "Dan"}
      {date: moment("2014-06-12"),val: 32, name: "Joe"}
      {date: moment("2014-06-15"),val: 28, name: "Joe"}
      {date: moment("2014-06-25"),val: 19, name: "Joe"}
      {date: moment("2014-07-01"),val: 23, name: "Joe"}
      {date: moment("2014-07-20"),val: 12, name: "Joe"}
      {date: moment("2014-07-22"),val: 25, name: "Joe"}
    ])

    @.data3 = new App.Collection([
      {year: "Year 1", val: 104, group: 'A'}
      {year: "Year 1", val: 543, group: 'B'}
      {year: "Year 1", val: 323, group: 'C'}
      {year: "Year 1", val: 99, group: 'D'}
      {year: "Year 2", val: 242, group: 'A'}
      {year: "Year 2", val: 823, group: 'B'}
      {year: "Year 2", val: 422, group: 'C'}
      {year: "Year 2", val: 644, group: 'D'}
      {year: "Year 3", val: 600, group: 'A'}
      {year: "Year 3", val: 131, group: 'B'}
      {year: "Year 3", val: 783, group: 'C'}
      {year: "Year 3", val: 200, group: 'D'}
    ])

    @.data4 = new App.Collection()

    for i in [0..250] by 1
      m = new App.Model
        num: Math.floor(Math.random()*250)
        val: Math.floor(Math.random()*500)
      @.data4.add m

    for i in [0..250] by 1
      m = new App.Model
        num: Math.floor(Math.random()*-250)
        val: Math.floor(Math.random()*-500)
      @.data4.add m

    @.data5 = new App.Collection([
      {year: "Year 1", val: 4}
      {year: "Year 1", val: 5}
      {year: "Year 1", val: 3}
      {year: "Year 1", val: 3}
      {year: "Year 1", val: 4}
      {year: "Year 1", val: 1}
      {year: "Year 1", val: 3}
      {year: "Year 1", val: 2}
      {year: "Year 2", val: 2}
      {year: "Year 2", val: 2}
      {year: "Year 2", val: 3}
      {year: "Year 2", val: 4}
      {year: "Year 2", val: 3}
      {year: "Year 2", val: 2}
      {year: "Year 2", val: 2}
      {year: "Year 2", val: 4}
      {year: "Year 3", val: 1}
      {year: "Year 3", val: 5}
      {year: "Year 3", val: 4}
      {year: "Year 3", val: 5}
      {year: "Year 3", val: 2}
      {year: "Year 3", val: 2}
      {year: "Year 3", val: 1}
      {year: "Year 3", val: 2}
      {year: "Year 4", val: 4}
      {year: "Year 4", val: 3}
      {year: "Year 4", val: 4}
      {year: "Year 4", val: 4}
      {year: "Year 4", val: 2}
      {year: "Year 4", val: 5}
      {year: "Year 4", val: 3}
      {year: "Year 4", val: 4}
      {year: "Year 5", val: 3}
      {year: "Year 5", val: 4}
      {year: "Year 5", val: 3}
      {year: "Year 5", val: 2}
      {year: "Year 5", val: 3}
      {year: "Year 5", val: 3}
      {year: "Year 5", val: 1}
      {year: "Year 5", val: 3}
      {year: "Year 6", val: 2}
      {year: "Year 6", val: 3}
      {year: "Year 6", val: 3}
      {year: "Year 6", val: 4}
      {year: "Year 6", val: 5}
      {year: "Year 6", val: 4}
      {year: "Year 6", val: 3}
      {year: "Year 6", val: 3}
      {year: "Year 7", val: 2}
      {year: "Year 7", val: 1}
      {year: "Year 7", val: 2}
      {year: "Year 7", val: 3}
      {year: "Year 7", val: 3}
      {year: "Year 7", val: 2}
      {year: "Year 7", val: 3}
      {year: "Year 7", val: 2}
      {year: "Year 8", val: 5}
      {year: "Year 8", val: 5}
      {year: "Year 8", val: 2}
      {year: "Year 8", val: 3}
      {year: "Year 8", val: 3}
      {year: "Year 8", val: 4}
      {year: "Year 8", val: 5}
      {year: "Year 8", val: 4}
      {year: "Year 9", val: 1}
      {year: "Year 9", val: 1}
      {year: "Year 9", val: 5}
      {year: "Year 9", val: 4}
      {year: "Year 9", val: 3}
      {year: "Year 9", val: 4}
      {year: "Year 9", val: 2}
      {year: "Year 9", val: 4}
      {year: "Year 10", val: 2}
      {year: "Year 10", val: 3}
      {year: "Year 10", val: 4}
      {year: "Year 10", val: 5}
      {year: "Year 10", val: 4}
      {year: "Year 10", val: 3}
      {year: "Year 10", val: 2}
      {year: "Year 10", val: 1}
    ])


    @.dataConfig1 = new App.Models.GraphConfig
      xKey: "name"
      yKey: "val"
      height: 500
      xRotate: 30
      legend: false
      # yDomain: (collection) ->
      #   [0, _.max(collection.pluck('val'))+100]
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
      # group: (model) ->
      #   val = model.get "val"
      #   if val > 25
      #     "A"
      #   else if val > 15
      #     "B"
      #   else
      #     "C"
      # groupColor: (group) ->
      #   if _.isEqual( group, "A" )
      #     "green"
      #   else if _.isEqual( group, "B" )
      #     "goldenrod"
      #   else
      #     "red"
      'tooltip': (collection, model, data) ->
        "<header>#{model.get('name')}</header>
          <div>Val: #{model.get('val')}</div>
        "


    @.dataConfig2 = new App.Models.GraphConfig
      xKey: "date"
      yKey: "val"
      group: (model) ->
        model.get "name"
      xFormat: (x) ->
        moment(x).format("Do MMM YYYY")
      groupColor: (group) ->
        c = {Chris:"#1f77b4",Dan:"#2ca02C",Joe:"#d62728"}
        c[group]
      'tooltip': (collection, model, data) ->
        "<header>#{data.x.format('MMM Do, YYYY')}</header>
          <div>
            <div>Val: #{data.y}</div>
            <div>Size: #{data.size}</div>
          </div>
        "


    @.dataConfig3 = new App.Models.GraphConfig
      xKey: "year"
      yKey: "val"
      height: 500
      group: (model) ->
        model.get "group"
      controls: true
      'tooltip': (collection, model, data) ->
        "<header>#{model.get('year')}</header>
          <div>Val: #{model.get('val')}</div>
        "
      groupColor: (group) ->
        if _.isEqual "A", group
          "#1f77b4"
        else if _.isEqual "B", group
          "#2ca02c"
        else if _.isEqual "C", group
          "#d62728"
        else
          "#ff7f0e"

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
        val = Math.abs model.get "val"
        num = Math.abs model.get 'num'

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
      'tooltip': (collection, model, data) ->
        "<header>#{model.get('num')}</header>
          <div>
            <div>Val: #{model.get('val')}</div>
            <div>Size:#{data.size}</div>
          </div>
        "

    @.dataConfig5 = new App.Models.GraphConfig
      xKey: "year"
      yKey: "val"
      height: 500
      legend: false
      'tooltip': (collection, models, data) ->
        "<header>Test</header>
          <div>Median: #{data.median}</div>
        "
      color: (collection,model) ->
        yr = parseInt model.get("year").split(" ")[1]

        d3.scale.category10().range()[yr]



    @