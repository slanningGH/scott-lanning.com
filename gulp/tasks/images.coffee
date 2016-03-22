gulp                    = require "gulp"
changed                 = require "gulp-changed"
imagemin                = require 'gulp-imagemin'

# OPTIMIZE AND MOVE IMAGE public FILES
gulp.task "images", ->
    return gulp.src "public/img_src/**/*"
        .pipe changed "public/img_src/**/*"
        .pipe imagemin {optimizationLevel: 5}
        .pipe gulp.dest "build/img"
        .on "error", (err) ->
            throw err
