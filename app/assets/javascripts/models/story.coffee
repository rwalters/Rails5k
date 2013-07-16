App.Story = DS.Model.extend
  title: DS.attr('string')
  author: DS.attr('string')
  body: DS.attr('string')

DS.RESTAdapter.configure("plurals", {
  story: "stories"
});
