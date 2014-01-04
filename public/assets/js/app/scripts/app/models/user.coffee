'use strict'
define ["jquery", "underscore", "backbone"], ($, _, Backbone) ->
  class User extends Backbone.Model

    validate: (attrs, options) ->
      return {msg: "Email is not valid"} unless((attrs.email).match(/@/))
      return {msg: "Password has to be 6 characters long"} unless(attrs.password.length > 5)
      return {msg: "Password confirmation does not match"} unless(attrs.password_confirmation is attrs.password)