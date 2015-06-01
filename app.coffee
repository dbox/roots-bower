axis         = require 'axis'
rupture      = require 'rupture'
autoprefixer = require 'autoprefixer-stylus'
js_pipeline  = require 'js-pipeline'
css_pipeline = require 'css-pipeline'
rimraf       = require 'rimraf'

module.exports =
  ignores: [
    'bower.json',
    'readme.md',
    '**/layout.*',
    '**/_*',
    '.gitignore',
    'ship.*conf',
  ]

  extensions: [
    js_pipeline
      manifest: 'assets/js/js-manifest.yml'
      out: 'js/build.js'
      minify: true
    css_pipeline
      manifest: "assets/css/css-manifest.yml"
      out: 'css/build.css'
      minify: true
  ]

  stylus:
    use: [axis(), rupture(), autoprefixer()]
    sourcemap: true

  'coffee-script':
    sourcemap: true

  jade:
    pretty: true

  after: ->
    rimraf('public/bower_components', (err) ->
      if err
        console.warn err
    )
