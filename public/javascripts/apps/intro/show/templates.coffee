# modular template loading
define (require) ->
    layout:     require "text!apps/intro/show/templates/layout.htm"
    title:      require "text!apps/intro/show/templates/title.htm"
    steambtn:   require "text!apps/intro/show/templates/steambtn.htm"
    caro: 		require "text!apps/intro/show/templates/caro.htm"