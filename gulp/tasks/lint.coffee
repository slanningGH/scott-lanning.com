gulp                    = require "gulp"
coffeelint              = require "gulp-coffeelint"

# coffeelint
gulp.task "lint", ->
    return gulp.src ["./public/coffee/**/*.coffee"]
        .pipe coffeelint()
        .pipe coffeelint.reporter()