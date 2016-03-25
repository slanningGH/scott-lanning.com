$ = require 'jquery'

$ ->

    # scroll window to element
    scroll_to_section = (name) ->

        # get anchor
        selector = $("a[name='#{name}']")

        # get closest section
        section = selector?.closest("section")

        # get padding of section
        pixels = section?.css("padding-top")

        # set pixel offset adjustment
        adjustment = pixels?.replace("px", "")

        # get scroll position with compensation for section padding
        if selector and adjustment

            position = selector.offset().top - adjustment

        # if position animate page to element
        if position then $("html, body").animate { "scrollTop": position }, 500, ->

            # close menu
            if $("nav.open").length then return toggle_menu()

    # hide or show responsive menu
    toggle_menu = ->

        $("nav").toggleClass "open"
        $(".menu").toggleClass "open"

    # hide/show responsive menu
    $(".menu").on "click", (e) ->

        # prevent default action
        e.preventDefault()

        # toggle menu
        toggle_menu()

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