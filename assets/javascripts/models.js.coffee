class App.Models.Item extends Backbone.Model

class App.Collections.Items extends Backbone.Collection
  model: App.Models.Item
  parse: (response) ->
    return response.feed

  url: ->
    "http://api.espn.com/v1/now/top?apikey=cym63tax6aznd6e5pxbp9bv6"
