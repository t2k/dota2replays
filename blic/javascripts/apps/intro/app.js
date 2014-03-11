// Generated by CoffeeScript 1.6.3
(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  define(["msgbus", "marionette", "apps/intro/show/controller"], function(msgBus, Marionette, Controller) {
    var API, Router, _ref;
    Router = (function(_super) {
      __extends(Router, _super);

      function Router() {
        _ref = Router.__super__.constructor.apply(this, arguments);
        return _ref;
      }

      Router.prototype.appRoutes = {
        "intro": "show"
      };

      return Router;

    })(Marionette.AppRouter);
    API = {
      show: function() {
        return new Controller;
      }
    };
    return msgBus.commands.setHandler("start:intro:app", function() {
      return new Router({
        controller: API
      });
    });
  });

}).call(this);