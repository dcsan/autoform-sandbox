Meteor.startup ->
  if Meteor.isServer

    console.log("make all users admins")

    users = Meteor.users.find().fetch()
    _.each users, (user) ->

      Meteor.users.upsert( {_id: user._id }, {
        $set: { roles: ['admin'] }
      })

