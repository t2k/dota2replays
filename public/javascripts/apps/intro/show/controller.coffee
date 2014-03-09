# upload show controller: require the components/fu/app
define ["msgbus", "backbone", "apps/intro/show/views", "controller/_base"], (msgBus, Backbone, Views, AppController) ->

    class Controller extends AppController
        initialize: ->
            ##{region,settings} = options
            #model = msgBus.reqres.request  "new:fuoptions:entity"

            @layout = @getLayoutView()
            @listenTo @layout, "show", =>
                @titleRegion()
                @caroRegion()
                @steamRegion()

            @show @layout

        titleRegion: ->
            view = @getTitleView()
            @layout.titleRegion.show view

        steamRegion: ->
            view = @getSteamView()
            @layout.steamRegion.show view

        caroRegion: ->
            view = @getCaroView()
            #@listenTo view, "button:clicked", =>
                # using Syphon to grab hash/options from the view's UI
                # 
                #data = Backbone.Syphon.serialize view
            
                # this is where the FU component is called...
                # display within this apps 'uploadRegion and pass in options
                # see components/fu/entities
                #msgBus.commands.execute "component:fu:show", @layout.uploadRegion, data

            @layout.caroRegion.show view

        getTitleView: ->
            new Views.Title

        getSteamView: ->
            new Views.Steambtn
        
        getCaroView: ->
            new Views.Caro     

        getLayoutView: ->
            new Views.Layout