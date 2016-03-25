gulp        = require "gulp"
bower       = require "gulp-bower"

gulp.task "bower", ->
  return bower()