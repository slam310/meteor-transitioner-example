# Iron Router Transitioner


http://julian.com/research/velocity/#uiPack
Effects: Pre-Registered



# velocityAnimation is:
# {
#   in: insertElement function or velocity uipack string or velocity animation arguments
#   out: removeElement function or velocity uipack string or velocity animation arguments
# }


Finally, animations between routes!

## Getting Started

    `meteor add ccorcos:transitioner`

First you need to add Iron Router and make some routes. Then you'll need to wrap the `{{>yield}}` in your iron layout with the transitioner block helpers:

    {{#transitioner}}
      {{> yield}}
    {{/transitioner}}

Then you can specify transitions between routes using the following:

    Transitioner.transition(fromRouteName, toRouteName, animationName, options)

Options:

- *duration*, in milliseconds. default: 500
- *easing*, a [Velocity.js easing function](http://julian.com/research/velocity/#easing). default: 'ease-in-out'
- *reverse*, a boolean whether the opposite trasition should occur in the opposite direction. default: true

## Examples

Check out the [demo]() to see how it works!

    Transitioner.transition('main', 'slideRight', 'slideRight')
    Transitioner.transition('main', 'slideLeft', 'slideLeft')
    Transitioner.transition('main', 'slideUp', 'slideUp')
    Transitioner.transition('main', 'slideDown', 'slideDown')
    Transitioner.transition('main', 'fade', 'fade')
    Transitioner.transition('main', 'reverse', 'slideDown', {reverse: false, duration: 1000, easing:'ease-in'})
    Transitioner.transition('reverse', 'main', 'slideRight', {reverse: false, duration: 200})
