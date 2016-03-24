gulp                    = require "gulp"
runSequence             = require "run-sequence"

# build app
gulp.task "build", (cb) ->
    runSequence  "clean", ["jade", "scripts", "stylus", "images"], "uglify", "move", cb