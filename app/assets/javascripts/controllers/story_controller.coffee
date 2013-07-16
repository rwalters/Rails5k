App.StoryController = Ember.ObjectController.extend
  isEditing: false

  editStory: ->
    @set('isEditing', true)

  acceptChanges: ->
    @set('isEditing', false)
    @get('model').save()
