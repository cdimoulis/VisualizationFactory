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