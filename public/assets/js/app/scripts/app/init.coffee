'use strict'
define ["jquery", "backbone", "app/views/sign_in"], ($, Backbone, SignInView) ->
  class Init
    
    @init: ->
      mapping =
        "#sign-up"  : SignInView

      initialized = {}

      for selector, view of mapping
        if $("body").has(selector).length isnt 0
          view = new view({el: selector}) unless initialized[selector]
          initialized[selector] = true