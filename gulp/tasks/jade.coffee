gulp        = require "gulp"
jade        = require "gulp-jade"
version     = require("../../package.json").version

# COMPILE AND CONVERT JADE FILES
gulp.task "jade", ->

    return
    # return gulp.src "source/views/*.jade"
    #     .pipe jade { locals: { version: version } }
    #     .pipe gulp.dest "build/"
    #     .on "error", (err) ->
    #         throw err