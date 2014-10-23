# This is a manifest file that'll be compiled into application.js, which will include all the files
# listed below.
#
# Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
# or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
#
# It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
# compiled file.
#
# Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
# about supported directives.
#
#= require jquery
#= require jquery_ujs
#= require handlebars
#= require bootstrap-sprockets
#= require ../../../vendor/assets/javascripts/underscore
#= require ../../../vendor/assets/javascripts/backbone
#= require ../../../vendor/assets/javascripts/thorax
#= require_tree ./libs/
#= require ./application/app
#= require_tree ./application/templates
#= require ./application/inits
#= require_tree ./application/models
#= require_tree ./application/collections
#= require_tree ./application/views
#= require_tree ./application/routers
#
