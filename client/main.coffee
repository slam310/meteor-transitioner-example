# a helpful debug function for turning printing on and off.

Transitioner.transition('main', 'slideRight', 'slideRight')
Transitioner.transition('main', 'slideLeft', 'slideLeft')
Transitioner.transition('main', 'slideUp', 'slideUp')
Transitioner.transition('main', 'slideDown', 'slideDown')
Transitioner.transition('main', 'fade', 'fade')

Transitioner.transition('main', 'reverse', 'slideDown', {reverse: false, duration: 1000})
Transitioner.transition('reverse', 'main', 'slideRight', {reverse: false, duration: 200})
