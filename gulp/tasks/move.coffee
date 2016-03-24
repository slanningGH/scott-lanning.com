gulp        = require 'gulp'

gulp.task "move", ->

    gulp.src ['public/css/**/*', "public/img/**/*", "public/files/**/*"]
    .pipe gulp.dest 'build'
    .on 'error', (err) ->
            throw err