gulp        = require "gulp"
rsync       = require "gulp-rsync"

gulp.task "deploy", ->
    gulp.src "build/**"
    .pipe rsync
        root: "build",
        username: "exaltavista"
        hostname: "107.180.25.236",
        destination: "/home/exaltavista/public_html/"
        port: 22
        progress: true