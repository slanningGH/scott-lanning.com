gulp                    = require "gulp"
runSequence             = require "run-sequence"

# default task and task bundles
gulp.task "default", (cb) ->
    runSequence ["scripts", "stylus", "images", "lint", "watch"], "node-dev", cb
