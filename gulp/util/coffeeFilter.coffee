'use strict'

path            = require 'path'

module.exports = (name) ->

    # return only files with .coffee extension
    return /(\.(coffee)$)/i.test path.extname name