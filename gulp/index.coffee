'use strict'

fs              = require 'fs'
onlyCoffee      = require './util/coffeeFilter'
tasks           = fs.readdirSync('./gulp/tasks/').filter(onlyCoffee)

tasks.forEach (task) ->
    require "./tasks/#{task}"