ApplicationController            = require '../controllers/application'

module.exports = [
    {
        path: '/'
        method: 'GET'
        config: ApplicationController.index
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
]