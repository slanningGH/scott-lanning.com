gulp        = require "gulp"
jade        = require "gulp-jade"
version     = require("../../package.json").version

# compile and convert jade files
gulp.task "jade", ->

    return gulp.src ["public/views/**/*.jade", "!public/views/includes/*.jade"]
        .pipe jade { locals: { version: version } }
        .pipe gulp.dest "build/"
        .on "error", (err) ->
            throw err