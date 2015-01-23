Package.describe({
  name: 'ccorcos:transitioner',
  summary: 'Transitions integrated with iron router.',
  version: '0.0.1',
  git: 'https://github.com/ccorcos/'
});

Package.onUse(function(api) {
  api.versionsFrom('METEOR@1');

  api.use([
    'coffeescript',
    'velocityjs:velocityjs',
    'templating',
    'underscore'
  ], 'client');

  api.addFiles([
    'lib/transitioner.html',
    'lib/transitioner.coffee'
  ], 'client');

  api.export('Transitioner', ['client']);

});