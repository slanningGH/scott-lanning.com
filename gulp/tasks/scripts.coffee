gulp                    = require "gulp"
browserify              = require "browserify"
coffee                  = require "gulp-coffee"
buffer                  = require "vinyl-buffer"
source                  = require "vinyl-source-stream"
sourcemaps              = require "gulp-sourcemaps"

# compile and convert coffeescript files
gulp.task "scripts", (err) ->
    return browserify
        entries: ["public/coffee/global.coffee"]
        extensions: [".coffee"]
        transform: "coffeeify"
    .bundle()
    .pipe source "bundle.js"
    .pipe buffer()
    .pipe sourcemaps.init { loadMaps: true, debug: true }
    .pipe sourcemaps.write "./", { addComment: true }
    .pipe gulp.dest "public/js"
    .on "error", (err) ->
        throw err