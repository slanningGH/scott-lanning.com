gulp                    = require "gulp"

# WATCH FOR JADE, SCRIPT, STYLUS AND IMAGE CHANGES, THEN RUN ASSOCIATED TASK
gulp.task "watch", ->
    gulp.watch "source/views/**/*.jade", ["jade"]
    gulp.watch "source/coffee/**/*.coffee", ["scripts"]
    gulp.watch "source/stylus/**/*.styl", ["stylus"]
    gulp.watch "source/img_src/**/*", ["images"]