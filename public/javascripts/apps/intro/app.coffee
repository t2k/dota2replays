# upload show app  preset a UI to test file uploads
define ["msgbus", "marionette", "apps/intro/show/controller"], (msgBus, Marionette, Controller) ->
    class Router extends Marionette.AppRouter
        appRoutes:
            "intro": "show"

    API =
        show: ->
            new Controller


    msgBus.commands.setHandler "start:intro:app", ->
        #console.log "starting upload app"
        new Router
            controller: API