gulp        = require 'gulp'

gulp.task "move", ->

    gulp.src ['public/css/**/*', "public/img/**/*", "public/files/**/*", "public/fonts/**/*", "public/.htaccess"], { base: "public" }
    .pipe gulp.dest 'build'
    .on 'error', (err) ->
            throw err