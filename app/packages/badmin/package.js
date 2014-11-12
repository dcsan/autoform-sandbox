Package.describe({
  summary: 'baad admin',
  version: "0.0.1",
  name: "dcsan:badmin"
});

Package.on_use(function (api) {

  console.log('-- badmin.on_use')

  // use both
  api.use([
    'underscore',
    'coffeescript',
    'iron:router@1.0.0',
    'aldeed:simple-schema@1.1.0',
    "aldeed:autoform@4.0.0"

  ], ['client', 'server']);

  api.use([
    'mquandalle:jade',
    'templating',
    'ui'
  ], 'client' );


  api.addFiles([
    'both/adminConfig.coffee',
    'both/startup.coffee',
    'both/routes.coffee',
    'both/collections/LocoText.coffee',
    'both/collections/Examples.coffee',  // examples embeds locotext
  ], ['client', 'server']);

  api.addFiles([
    'client/adminSetup.html',
  ], 'client' );

  api.export(['AdminConfig', 'Examples', 'LocoText'])

});