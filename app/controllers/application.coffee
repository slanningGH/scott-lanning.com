version         = require('../../package.json').version

module.exports =

    # renders index view
    index:
        handler: (request, reply) ->
            reply.view 'index',
                version: version

    # serves javascript files
    js:
        directory:
            path: "#{__dirname}/../../public/js"

    # serves css files
    css:
        directory:
            path: "#{__dirname}/../../public/css"

    # serves image files
    img:
        directory:
            path: "#{__dirname}/../../public/img"

    # serves javascript files
    fonts:
        directory:
            path: "#{__dirname}/../../public/fonts"