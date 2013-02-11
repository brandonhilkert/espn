class App.Views.Items extends Backbone.View
  tagName: "ul"
  className: "items"

  initialize: ->
    @listenTo @collection, "reset", @addAll
    @listenTo @collection, "add", @addOne

  render: ->
    @addAll()
    @

  addAll: ->
    @collection.forEach @addOne, @

  addOne: (item) ->
    itemView = new App.Views.Item model: item
    @$el.append itemView.render().el


class App.Views.Item extends Backbone.View
  tagName: "li"
  className: "item"
  template: template("item")

  render: ->
    @$el.html @template(@model.attributes)
    @

