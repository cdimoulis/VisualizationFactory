Thorax.Model = Thorax.Model.extend
  'useRailsParams' : true
  'persistStorage' : false

  'url' : () ->
    if _.has(@, 'collection')
      base = _.result(@.collection, "url")
    else if _.has(@, 'parent')
      base = _.result(@.parent, 'url') + _.result(@, "urlRoot")
    else 
      base = _.result(@, "urlRoot")

    return base  if @.isNew()

    base + ((if base.charAt(base.length - 1) is "/" then "" else "/")) + encodeURIComponent(@id)
  
  'toJSON' : () ->
    if @.useRailsParams
      name = @['name'].toUnderscore().toLowerCase()
      
      obj = {}
      
      if !_.isUndefined(name)
        obj[@['name'].toUnderscore()] = _.clone @.attributes
      else
        obj = _.clone @.attributes
    else
      obj = _.clone @.attributes
    obj
    
  'clone' : () ->
    modelClone = new @.constructor()

    modelClone.useRailsParams = @.useRailsParams
    modelClone['__class__'] = @['__class__']
    modelClone['__application__'] = @['__application__']

    _.each @.attributes, (value, key, list) ->
      if !_.isUndefined(value) and !_.isNull(value) and !_.isUndefined(value['__class__']) and (value['__class__'] is "Thorax.Model")
        @.set key, value.clone()
      else
        @.set key, value
    , modelClone

    modelClone