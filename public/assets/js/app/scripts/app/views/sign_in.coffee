'use strict'
define ["jquery", "underscore", "backbone", "../models/user"], ($, _, Backbone, User) ->
  class SignInView extends Backbone.View

    events:
      "submit #sign-up-form"  : "handleSubmit"

    initialize: () ->
      @model = new User()
      @model.on("invalid", @handleError) 

    handleSubmit: (e) ->
      e.preventDefault()
      user = 
        email: $("#user_email").val()
        password: $("#user_password").val()
        password_confirmation: $("#user_password_confirmation").val()
      @model.set(user)
      e.currentTarget.submit() if @model.isValid()

    handleError: (model, error) =>
      $(".validation-error").html("✗ " + error.msg)
