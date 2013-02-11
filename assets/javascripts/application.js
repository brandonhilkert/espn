//= require "vendor/jquery-1.8.1.min.js"
//= require "vendor/underscore"
//= require "vendor/backbone"
//= require "vendor/handlebars"

//= require "app"
//= require "models"
//= require "views"
//= require "routers"

$(function() {
  Espn = new App.Routers.Main();
  Backbone.history.start();
});

