gulp                    = require "gulp"
runSequence             = require "run-sequence"

# default task and task bundles
gulp.task "default", (cb) ->
    runSequence ["scripts", "stylus", "images", "bower", "lint", "watch"], "node-dev", cb
