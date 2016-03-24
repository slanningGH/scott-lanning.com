gulp        = require "gulp"
clean       = require "gulp-clean"

# optimize and move image public files
gulp.task "move", (err) ->
    return gulp.src ["public/js/**/*", "public/css/**/*", "public/fonts/**/*", "public/images/**/*","public/files/**/*"]
        .pipe clean {force: true}
        .pipe gulp.dest "build", { base: "./" }
        .on "error", (err) ->
            throw err
