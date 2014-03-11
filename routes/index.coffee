exports.index = (req, res) ->
  res.render "index"
  
exports.upload = (req, res) ->
    util = require "util"
    multiparty = require 'multiparty'
    form = new multiparty.Form
        autoFiles: true
        uploadDir: "./tempUploads"
        
    form.parse req, (err, fields, files) ->
        if err
            res.writeHead 500,
                "content-type": "text/plain"
            res.send "ERROR: uploading\n\n"

        console.log "upload handled", fields, files
        res.json util.inspect(
            message: "upload complete"
            fields: fields
            files: files
        )  