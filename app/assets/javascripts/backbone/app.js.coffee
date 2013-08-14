@GeneralAssemblyApp = do (Backbone, Marionette) ->

  App = new Marionette.Application

  App.addRegions
    mainRegion: "#main-region"
    memberDetailRegion: "#member-detail-region"

  App.on "initialize:after", ->
    if Backbone.history
      Backbone.history.start()

  App
