class App.Routers.Main extends Backbone.Router
  initialize: ->
    @$mainEl = $('.app')

  routes:
    "": "index"

  index: ->
    items = new App.Collections.Items()
    view = new App.Views.Items
      collection: items
    items.fetch()
    @$mainEl.html view.render().el

