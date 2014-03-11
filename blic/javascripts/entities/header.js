// Generated by CoffeeScript 1.6.3
(function() {
  var __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  define(["backbone", "msgbus"], function(Backbone, msgBus) {
    var API, Header, HeaderCollection, _ref, _ref1;
    Header = (function(_super) {
      __extends(Header, _super);

      function Header() {
        _ref = Header.__super__.constructor.apply(this, arguments);
        return _ref;
      }

      return Header;

    })(Backbone.Model);
    HeaderCollection = (function(_super) {
      __extends(HeaderCollection, _super);

      function HeaderCollection() {
        _ref1 = HeaderCollection.__super__.constructor.apply(this, arguments);
        return _ref1;
      }

      HeaderCollection.prototype.model = Header;

      return HeaderCollection;

    })(Backbone.Collection);
    API = {
      getHeaders: function() {
        return new Backbone.Collection([
          {
            name: "Upload",
            url: "#upload",
            title: "Upload manager",
            cssClass: "glyphicon glyphicon-hdd"
          }, {
            name: "About",
            url: "#about",
            title: "What up?",
            cssClass: "glyphicon glyphicon-dashboard"
          }
        ]);
      }
    };
    return msgBus.reqres.setHandler("header:entities", function() {
      return API.getHeaders();
    });
  });

}).call(this);