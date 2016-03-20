gulp                    = require "gulp"
bump                    = require "gulp-bump"

# VERSION BUMP
gulp.task "bump", ->
    return gulp.src ["./package.json"]
        .pipe bump()
        .pipe gulp.dest "./"