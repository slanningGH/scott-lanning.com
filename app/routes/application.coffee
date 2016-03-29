ApplicationController            = require '../controllers/application'

module.exports = [
    {
        path: '/'
        method: 'GET'
        config: ApplicationController.index
    }
    {
        path: '/404/'
        method: 'GET'
        config: ApplicationController.notfound
    }
    {
        path: '/js/{p*}'
        method: 'GET'
        handler: ApplicationController.js
    }
    {
        path: '/css/{p*}'
        method: 'GET'
        handler: ApplicationController.css
    }
    {
        path: '/img/{p*}'
        method: 'GET'
        handler: ApplicationController.img
    }
    {
        path: '/fonts/{p*}'
        method: 'GET'
        handler: ApplicationController.fonts
    }
    {
        path: '/files/{p*}'
        method: 'GET'
        handler: ApplicationController.files
    }
]