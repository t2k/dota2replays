# modular template loading
define (require) ->
    layout:     require "text!apps/about/show/templates/layout.htm"
    about:      require "text!apps/about/show/templates/about.htm"