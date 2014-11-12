allAdmin = () ->
  users = Meteor.users.find().fetch()
  _.each users, (user) ->
    Meteor.users.upsert( {_id: user.id }, {
      $set: { roles: ['admin'] }
    })
    console.log("user", user)

makeAdmin = (selector) ->
  Meteor.users.upsert( selector, {
    $set: { roles: ['admin'] }
  })
  console.log("user made admin", selector)


Meteor.startup ->

  if Meteor.isServer
    Router.route "forceAdmin/userId/:userId", ->
      req = this.request
      res = this.response
      makeAdmin({ _id: @params.userId })
      res.end("yoohoo you're an admin");
    , {where: 'server'}

    Router.route "allAdmin", ->
      where: 'server'
      action: ->
        @response.writeHead(200, {'Content-Type': 'text/plain'})
        @response.end("allAdmin")

  if Meteor.isClient
    Router.route "/adminSetup", ->
      @render "adminSetup"
