gulp                    = require "gulp"
stylus                  = require "gulp-stylus"
changed                 = require "gulp-changed"

# compile and convert stylus files
gulp.task "stylus", ->
    return gulp.src ["public/stylus/styles.styl", "public/stylus/ie.styl"]
        .pipe changed "public/stylus/**/*.styl"
        .pipe stylus({
            paths: ["public/css/"]
            set: ["compress"]
        })
        .pipe gulp.dest "public/css"
        .on "error", (err) ->
            throw err
