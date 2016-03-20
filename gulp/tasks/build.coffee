gulp                    = require "gulp"
runSequence             = require "run-sequence"

# build app
gulp.task "build", (cb) ->
    runSequence ["jade", "scripts", "stylus", "images"], "uglify", cb