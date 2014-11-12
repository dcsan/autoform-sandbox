ExamplesSchema = new SimpleSchema

  cname:
    type: String

  blob:
    type: String

  locotext:
    type: [LocoText]
    # autoform:
    #   type: 'textarea'



Examples = new Meteor.Collection('Examples')
Examples.attachSchema(ExamplesSchema)

