App.CreateStoryController = Ember.ObjectController.extend
  author: null
  title: null
  body: null

  save: ->
    story = App.Story.createRecord
      title: @get('title')
      author: @get('author')
      body: @get('body')

    story.save().then =>
      @transitionToRoute('story', story)
