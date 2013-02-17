express = require 'express'


app = express()

serve = (filepath, urlpath) ->
  app.get urlpath, (req, res) ->
    res.sendfile filepath

serve filepath, urlpath for urlpath, filepath of {
  '/': 'index.html'
  '/css/base.css': 'css/base.css'
  '/favicon.ico': 'favicon.ico'
}

port = process.env.PORT ? 4096
app.listen port, -> console.log "listening on port #{port}"
