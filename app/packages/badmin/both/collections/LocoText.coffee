LocoTextSchema = new SimpleSchema

  data:
    type: String
    autoform:
      type: 'textarea'
      rows: 2
      cols: 90

  lang:
    type: String
    allowedValues: ['en', 'ja', 'cn', 'ko', 'de']


LocoText = new Meteor.Collection("LocoText")
LocoText.attachSchema(LocoTextSchema)