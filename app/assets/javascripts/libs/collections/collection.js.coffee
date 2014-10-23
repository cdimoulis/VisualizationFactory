Thorax.Collection = Thorax.Collection.extend
  'url': () ->
    if _.has(@,'parent')
      _.result(@.parent, 'url') + "/#{@.name.toUnderscore().toLowerCase()}"
    else
      "/#{@.name.toUnderscore().toLowerCase()}"

  'toJSON': (options) ->
    obj = {}
    name = "#{@.name.toUnderscore().toLowerCase()}"

    if _.isEmpty(@.models)
      if !_.isNull(name)
        obj["#{@.name.toUnderscore().toLowerCase()}"] = {}
    else
      if _.isNull(name)
        obj = @.map((model)->
          model.toJSON(options)
        )
      else
        obj["#{@.name.toUnderscore().toLowerCase()}"] = @.map (model)->
          model.toJSON(options)
    obj


  'sum': (attribute, options) ->
    options = options or {}
    if (@.length and !@._stats.has(attribute)) or (@.length and options["force"])

      # if !@._statListener
      #   @.stats()
      #   @._statListener = true

      values = _.map @.models, (model) ->
        if model.has( attribute ) and _.isNumber(model.get(attribute))
          model.get(attribute)

      sum = _.reduce values, (memo, val) ->
        memo + val
      , 0

      @._stats._set attribute, "sum", sum
      @._stats._set attribute, "max", _.max values
      @._stats._set attribute, "min", _.min values
      @._stats._set attribute, "count", values.length
      @.trigger "STATS:SUM"

    @._stats._get attribute, "sum"

  'count': (attribute, options) ->
    @.sum(attribute, options)

    @.trigger "STATS:COUNT"
    @._stats._get attribute, "count"

  'min': (attribute, options) ->
    @.sum(attribute, options)

    @.trigger "STATS:MIN"
    @._stats._get attribute, "min"

  'max': (attribute, options) ->
    @.sum(attribute, options)

    @.trigger "STATS:MAX"
    @._stats._get attribute, "max"

  'average': (attribute, options) ->
    sum = @.sum(attribute, options)

    @._stats._set attribute, "average",  sum / @._stats._get( attribute, "count" )

    @.trigger "STATS:AVERAGE"
    @._stats._get attribute, "average"

  'initialize': () ->
    @._stats = new App.Models.Stats()
    @._stats._collection = @