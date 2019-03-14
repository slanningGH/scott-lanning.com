import '../css/styles.styl';

$(function() {

    // scroll window to element
    var scroll_to_section = function(name) {

        // get anchor
        let position;
        var selector = $(`a[name='${name}']`);

        // get closest section
        var section = selector != null ? selector.closest('section') : undefined;

        // get padding of section
        var pixels = section != null ? section.css('padding-top') : undefined;

        // set pixel offset adjustment
        var adjustment = pixels != null ? pixels.replace('px', '') : undefined;

        // get scroll position with compensation for section padding
        if (selector && adjustment) {

            position = selector.offset().top - adjustment;
        }

        // if position animate page to element
        if (position) { return $('html, body').animate({ 'scrollTop': position }, 500, function() {

            // close menu
            if ($('nav.open').length) { return toggle_menu(); }
        }); }
    };

    // hide or show responsive menu
    var toggle_menu = function() {
        $('nav').toggleClass('open');
        return $('.menu').toggleClass('open');
    };

    // hide/show responsive menu
    $('.menu').on('click', function(e) {

        // prevent default action
        e.preventDefault();

        // toggle menu
        return toggle_menu();
    });

    return $('nav a').on('click', function(e) {

        // prevent default action
        e.preventDefault();

        // get href
        var href = $(this).attr('href');

        // if href exists
        if (href) {

            // get only the anchor name
            var name = href.replace('#', '');

            // call scroll function passing anchor name
            return scroll_to_section(name);
        }
    });
});

(function(i, s, o, g, r, a, m) {
    i['GoogleAnalyticsObject'] = r;
    i[r] = i[r] || function() {
        (i[r].q = i[r].q || []).push(arguments)
    }, i[r].l = 1 * new Date();
    a = s.createElement(o), m = s.getElementsByTagName(o)[0];
    a.async = 1;
    a.src = g;
    m.parentNode.insertBefore(a, m)
})(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');
ga('create', 'UA-22257839-1', 'auto');
ga('send', 'pageview');
