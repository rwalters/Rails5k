#= require modernizr
#= require jquery
#= require handlebars
#= require ember
#= require ember-data
#= require bootstrap
#= require showdown
#= require_self
#= require routes
#= require store
#= require_tree ./controllers
#= require_tree ./models
#= require_tree ./templates
#= require_tree ./views

window.App = Ember.Application.create
  LOG_TRANSITIONS: true
  LOG_BINDINGS: true

showdown = new Showdown.converter()

Ember.Handlebars.registerBoundHelper 'markdown', (input) ->
  new Handlebars.SafeString(showdown.makeHtml(input))
