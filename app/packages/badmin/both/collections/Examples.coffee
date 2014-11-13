ExamplesSchema = new SimpleSchema

  cname:
    type: String

  blob:
    type: String

  nested:
    label: "nested [LocoText]"
    type: [LocoTextSchema]


Examples = new Meteor.Collection('Examples')
Examples.attachSchema(ExamplesSchema)

