###
Module dependencies.
###

express = require "express"
routes = require "./routes"  # will look for index.js by default

http = require "http"
path = require "path"
util = require "util"
#config = require "./config"
app = express()

# all environments
app.set "port", process.env.PORT or 3000
app.set 'views', './views'
app.set "view engine", "jade"
#app.use express.favicon()
app.use express.logger "dev"
app.use express.json()
app.use express.urlencoded()
app.use express.methodOverride()
app.use express.cookieParser "your secret here"
app.use express.session()
app.use app.router
app.use express.static './public'

#api key
config = require('./config.json')[app.get('env')]


# development only
app.use express.errorHandler()  if "development" is app.get "env" 

# routing
# INDEX ROUTE, render a JADE view
app.get "/", routes.index
app.post "/upload", routes.upload

## create server
http.createServer(app).listen app.get("port"), ->
  console.log "Express server listening on port=#{app.get('port')} environment=#{app.get('env')} apikey=#{config.APIKEY}"
  