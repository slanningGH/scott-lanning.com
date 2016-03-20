gulp                    = require "gulp"
runSequence             = require "run-sequence"

# DEFAULT TASK AND TASK BUNDLES
gulp.task "default", (cb) ->
    runSequence ["jade", "scripts", "stylus", "images", "lint", "watch"], cb
