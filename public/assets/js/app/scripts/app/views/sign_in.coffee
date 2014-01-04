'use strict'
define ["jquery", "underscore", "backbone", "../models/user", "backbone_validation"], ($, _, Backbone, User, BackboneValidation) ->
  class SignInView extends Backbone.View

    events:
      "submit #sign-up-form"  : "handleSubmit"

    initialize: () ->
      @model = new User()
      Backbone.Validation.bind(@, {invalid: @handleInvalid}) 

    handleSubmit: (e) ->
      e.preventDefault()
      $(".validation-error").html("")
      user = 
        email: $("#user_email").val()
        password: $("#user_password").val()
        password_confirmation: $("#user_password_confirmation").val()
      @model.set(user)
      e.currentTarget.submit() if @model.isValid(true)

    handleInvalid: (view, attr, error, selector) =>
      $(".validation-error").append("✗ " + error + "<br/>")
