'use strict'
define ["jquery", "underscore", "backbone"], ($, _, Backbone) ->
  class User extends Backbone.Model

    validation:
      email:
        pattern: 'email'
      password:
        length: 6
      password_confirmation:
        equalTo: 'password'