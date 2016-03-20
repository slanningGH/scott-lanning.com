gulp                    = require "gulp"
uglify                  = require "gulp-uglify"

# UGLIFY JAVASCRIPT FILE
gulp.task 'uglify', ->
    return gulp.src 'source/js/bundle.js'
        .pipe uglify()
        .pipe gulp.dest 'build/js'
        .on 'error', (err) ->
            throw err