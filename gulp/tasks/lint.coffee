gulp                    = require "gulp"
coffeelint              = require "gulp-coffeelint"

# COFFEELINT
gulp.task "lint", ->
    return gulp.src ["./source/coffee/**/*.coffee"]
        .pipe coffeelint()
        .pipe coffeelint.reporter()