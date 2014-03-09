# list currency views
define ['msgbus', 'marionette', 'apps/intro/show/templates'], (msgBus, Marionette, Templates) ->

    Title: class _title extends Marionette.ItemView
        template: _.template(Templates.title)

    Caro: class _title extends Marionette.ItemView
        template: _.template(Templates.caro)

    Steambtn: class _options extends Marionette.ItemView
        template: _.template(Templates.steambtn)
        triggers:
            "click button" : "button:clicked"

    Layout: class _Layout extends Marionette.Layout
        template: _.template(Templates.layout)
        className: "container"
        regions:
            titleRegion: "#title-region"
            caroRegion: "#caro-region"
            steamRegion: "#steam-region"