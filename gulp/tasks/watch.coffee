gulp                    = require "gulp"

# WATCH FOR JADE, SCRIPT, STYLUS AND IMAGE CHANGES, THEN RUN ASSOCIATED TASK
gulp.task "watch", ->
    gulp.watch "public/views/**/*.jade", ["jade"]
    gulp.watch "public/coffee/**/*.coffee", ["scripts"]
    gulp.watch "public/stylus/**/*.styl", ["stylus"]
    gulp.watch "public/img_src/**/*", ["images"]