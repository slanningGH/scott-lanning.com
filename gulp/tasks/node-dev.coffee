gulp                    = require "gulp"
shell                   = require "gulp-shell"
nodeDev                 = require "node-dev"

# watch for node changes, then restart node server
gulp.task "node-dev", shell.task [
    "node-dev app/app.coffee"
]