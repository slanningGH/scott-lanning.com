# environment
process.env.NODE_CONFIG_DIR     = "#{__dirname}/config"

# require modules
inert                   = require 'inert'
fs                      = require 'fs'
path                    = require 'path'
Hapi                    = require 'hapi'
Jade                    = require 'jade'
config                  = require 'config'
vision                  = require 'vision'

# version
version                 = require('../package.json').version

# new hapi server with default serving from public folder
server = new Hapi.Server
    connections:
        routes:
            files:
                relativeTo: path.join __dirname, 'public'

# register server params
server.connection
    host: config.get 'host'
    port: config.get 'port'

# register serving files from static directory
server.register inert

# static template configs
server.register vision, (err) ->

    # set jade view rendered
    server.views
        engines:
            jade: Jade
        path: ["#{__dirname}/../public/views"]
        isCached: process.env.NODE_ENV is 'production'
        compileOptions:
            pretty: config.get 'prettyHTML'

# load routes
fs.readdirSync("#{__dirname}/routes").forEach (filename) ->

    # get extension
    ext         = path.extname filename

    # if coffee
    if ext is '.coffee'

        # get filename plus extension
        filename = path.basename filename, ext

        # require file
        server.route require "#{__dirname}/routes/#{filename}"

# if not required
unless module.parent

    # start server
    server.start ->

        # log server start message to console
        console.log "Super hapi to be on port #{server.info.port} in #{process.env.NODE_ENV} mode on Node.js version #{process.versions.node}"

# export server
module.exports = server