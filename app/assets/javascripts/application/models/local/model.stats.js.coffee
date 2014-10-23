App.Model.extend
  name: "Stats"
  _collection: null
  _isListening: false

  _set: (attribute,stat,value) ->

    if !_.has(@.attributes, attribute)
      if !@._isListening
        @._isListening = true
        @.listenTo @._collection, "add remove reset change destroy sync", @._refresh

      @.set attribute, new App.Model()

    @.get(attribute).set stat, value

  _get: (attribute, stat) ->

    if _.has( @.attributes, attribute )
      @.get(attribute).get stat
    else
      undefined

  _refresh: () ->
    console.log "Trigger stats", @.attributes

    _.each @.attributes, (model, key) =>
      _.each model.attributes, (value, method) =>
        console.log key, method
        @._collection[method]( key, {force:true} )