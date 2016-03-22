gulp                    = require "gulp"
shell                   = require "gulp-shell"
nodeDev                 = require "node-dev"

# WATCH FOR NODE CHANGES, THEN RESTART NODE SERVER
gulp.task "node-dev", shell.task [
    "node-dev app/app.coffee"
]