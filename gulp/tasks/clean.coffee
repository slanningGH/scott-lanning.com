gulp        = require "gulp"
del         = require "del"

# clean build folder out before moving files into it
gulp.task "clean", (err) ->
    return del ['build/**/*']