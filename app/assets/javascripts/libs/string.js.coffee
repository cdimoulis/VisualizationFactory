String::toUnderscore = () ->
  str = @.replace(/([A-Z])/g, (str)->
    "_" + str.toLowerCase()
  )
  str = str.slice(1)  while str.charAt(0) is "_"
  str

String::toCamel = () ->
  @.toLowerCase().replace /_(.)/g, (match, group1) ->
      group1.toUpperCase()

String::trim = () -> 
  @.replace /^\s+|\s+$/g, ""

String::capitalize = () ->
  @.charAt(0).toUpperCase() + @.slice(1)

String::titleize = () ->
  tmp = @.replace /[ \-_]/g, ' '
  tmp = tmp.replace /,/g, ', '
  words = tmp.match /\w+/g
  
  (word.capitalize() for word in words).join ' '

String::trunc = (n) ->
  (if @.length > n then @.substr(0, n) else @)

String::variablize = () ->
  tmp = @.replace(/[^a-zA-Z ]/g, "") 
  tmp = tmp.replace(/\s+/g, '_')
  tmp.toCamel()

# Handelbars String Helpers 
Handlebars.registerHelper('titleize', (str) ->
  if _.isNull(str) || _.isUndefined(str)
    new Handlebars.SafeString("")
  else
    new Handlebars.SafeString(str.toString().titleize())
)

Handlebars.registerHelper('capitalize', (str) ->
  if _.isNull(str) || _.isUndefined(str)
    new Handlebars.SafeString("")
  else
    new Handlebars.SafeString(str.toString().capitalize())
)

Handlebars.registerHelper('toCamel', (str) ->
  if _.isNull(str) || _.isUndefined(str)
    new Handlebars.SafeString("")
  else
    new Handlebars.SafeString(str.toString().toCamel())
)

Handlebars.registerHelper('toUnderscore', (str) ->
  if _.isNull(str) || _.isUndefined(str)
    new Handlebars.SafeString("")
  else
    new Handlebars.SafeString(str.toString().toUnderscore())
)

Handlebars.registerHelper('trim', (str) ->
  if _.isNull(str) || _.isUndefined(str)
    new Handlebars.SafeString("")
  else
    new Handlebars.SafeString(str.toString().trim())
)

Handlebars.registerHelper('render', (str) ->
  if _.isNull(str) || _.isUndefined(str)
    new Handlebars.SafeString("")
  else
    new Handlebars.SafeString(str.toString())
)

Handlebars.registerHelper 'variablize', (str) ->
  if _.isNull(str) || _.isUndefined(str)
    new Handlebars.SafeString("")
  else
    new Handlebars.SafeString(str.toString().variablize())