'use strict'

gulp                    = require "gulp"

# watch for jade, script, stylus and image changes, then run associated task
gulp.task "watch", ->
    gulp.watch "public/coffee/**/*.coffee", ["scripts"]
    gulp.watch "public/stylus/**/*.styl", ["stylus"]
    gulp.watch "public/img_src/**/*", ["images"]