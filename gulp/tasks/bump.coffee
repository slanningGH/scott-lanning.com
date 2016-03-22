gulp                    = require "gulp"
bump                    = require "gulp-bump"

# version bump
gulp.task "bump", ->
    return gulp.src ["./package.json"]
        .pipe bump()
        .pipe gulp.dest "./"