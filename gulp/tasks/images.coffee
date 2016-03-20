gulp                    = require "gulp"
changed                 = require "gulp-changed"
imagemin                = require 'gulp-imagemin'

# OPTIMIZE AND MOVE IMAGE SOURCE FILES
gulp.task "images", ->
    return gulp.src "source/img_src/**/*"
        .pipe changed "source/img_src/**/*"
        .pipe imagemin {optimizationLevel: 5}
        .pipe gulp.dest "build/img"
        .on "error", (err) ->
            throw err
