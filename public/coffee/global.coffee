$ = require 'jquery'

$ ->

    # scroll window to element
    scroll_to_section = (name) ->

        # get scroll position with compensation for section padding
        position = $("a[name='#{name}']").offset().top - 50

        # if position animate page to element
        if position then return $("html, body").animate { "scrollTop": position }, 500

    # hide/show responsive menu
    $(".menu").on "click", (e) ->

        # prevent default action
        e.preventDefault()

        $("nav").toggleClass "open"
        $(this).toggleClass "open"

    $("nav a").on "click", (e) ->

        # prevent default action
        e.preventDefault()

        # get href
        href = $(this).attr "href"

        # if href exists
        if href

            # get only the anchor name
            name = href.replace "#", ""

            # call scroll function passing anchor name
            return scroll_to_section name