#/*global require*/
'use strict'

require.config
  shim:
    underscore:
      exports: '_'
    
    backbone:
      deps: [
        'underscore'
        'jquery'
      ]
      exports: 'Backbone'
  
  paths:
    jquery: '../../app/bower_components/jquery/jquery'
    backbone: '../../app/bower_components/backbone/backbone'
    underscore: '../../app/bower_components/underscore/underscore'
    backbone_validation: '../../app/bower_components/backbone-validation/backbone-validation-amd'

require ['backbone', 'jquery', 'app/init'], (Backbone, $, Init) ->
  $ ->
    Init.init()
