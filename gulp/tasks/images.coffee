gulp                    = require "gulp"
changed                 = require "gulp-changed"
imagemin                = require 'gulp-imagemin'

# optimize and move image public files
gulp.task "images", ->
    return gulp.src "public/img_src/**/*"
        .pipe changed "public/img_src/**/*"
        # .pipe imagemin {optimizationLevel: 5}
        .pipe gulp.dest "public/img"
        .on "error", (err) ->
            throw err
