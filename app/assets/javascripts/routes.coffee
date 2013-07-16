App.Router.reopen
  location: 'history'
  rootURL: '/'

App.Router.map ->
  @resource 'users'
  @resource 'createStory'
  @resource 'stories', ->
    @resource('story', {path: ':story_id'})

App.StoriesRoute = Ember.Route.extend
  model: ->
    App.Story.find()

App.CreateStoryRoute = Ember.Route.extend
  setupController: (controller, model) ->
    controller.set('title', null)
    controller.set('author', null)
    controller.set('body', null)
