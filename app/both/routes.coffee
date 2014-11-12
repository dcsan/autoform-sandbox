
Meteor.startup ->

  if Meteor.isClient

    console.log("make routes")

    Router.configure
      layoutTemplate: "layout"

    Router.route "/", ->
      @render("top")

    Router.route "/top", ->
      @render("top")
