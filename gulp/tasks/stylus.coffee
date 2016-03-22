gulp                    = require "gulp"
stylus                  = require "gulp-stylus"
changed                 = require "gulp-changed"

# COMPILE AND CONVERT STYLUS FILES
gulp.task "stylus", ->
    return gulp.src ["public/stylus/styles.styl", "public/stylus/ie.styl"]
        .pipe changed "public/stylus/**/*.styl"
        .pipe stylus({
            paths: ["build/css/"]
            set: ["compress"]
        })
        .pipe gulp.dest "build/css"
        .on "error", (err) ->
            throw err
