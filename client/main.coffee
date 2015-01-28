
Transitioner.transition
  fromRoute: 'main'
  toRoute: 'slideRight'
  velocityAnimaton:
    in: 'transition.slideRightBigIn'
    out: 'transition.slideLeftBigOut'

Transitioner.transition
  fromRoute: 'slideRight'
  toRoute: 'main'
  velocityAnimaton:
    in: 'transition.slideLeftBigIn'
    out: 'transition.slideRightBigOut'


$.Velocity.RegisterEffect 'transition.pushLeftIn',
    defaultDuration: 500
    calls: [
      [ {translateX: ['0%', '-100%']}, 100, { easing: 'ease-in-out' } ]
    ]
    reset: {translateX: '-100%'}


$.Velocity.RegisterEffect 'transition.pushRightOut', 
    defaultDuration: 500
    calls: [ 
      [ {translateX:['100%', '0%']}, 100, { easing: 'ease-in-out' } ]
    ]
    reset: {translateX: '0%'}

$.Velocity.RegisterEffect 'transition.pushRightIn', 
    defaultDuration: 500
    calls: [ [ {translateX: ['0%', '100%']}, 100, { easing: 'ease-in-out' } ] ]
    reset: {translateX: '100%'}

$.Velocity.RegisterEffect 'transition.pushLeftOut',
    defaultDuration: 500
    calls: [ [ {translateX: ['-100%', '0%']}, 100, { easing: 'ease-in-out' } ] ]
    reset: {translateX: '0%'}

$.Velocity.RegisterEffect 'transition.pushUpIn', 
    defaultDuration: 500
    calls: [ [ {translateY: ['0%', '-100%']}, 100, { easing: 'ease-in-out' } ] ]
    reset: {translateY: '-100%'}

$.Velocity.RegisterEffect 'transition.pushDownOut', 
    defaultDuration: 500
    calls: [ [ {translateY: ['100%', '0%']}, 100, { easing: 'ease-in-out' } ] ]
    reset: {translateY: '0%'}

$.Velocity.RegisterEffect 'transition.pushDownIn',
    defaultDuration: 500
    calls: [ [ {translateY: ['0%', '100%']}, 100, { easing: 'ease-in-out' } ] ]
    reset: {translateY: '100%'}

$.Velocity.RegisterEffect 'transition.pushUpOut',
    defaultDuration: 500
    calls: [ [ {translateY: ['-100%', '0%']}, 100, { easing: 'ease-in-out' } ] ]
    reset: {translateY: '0%'}



Transitioner.transition
  fromRoute: 'main'
  toRoute: 'slideLeft'
  velocityAnimaton:
    in: 'transition.pushLeftIn'
    out: 'transition.pushRightOut'

Transitioner.transition
  fromRoute: 'slideLeft'
  toRoute: 'main'
  velocityAnimaton:
    in: 'transition.pushRightIn'
    out: 'transition.pushLeftOut'


Transitioner.transition
  fromRoute: 'main'
  toRoute: 'slideUp'
  velocityAnimaton:
    in: 'transition.perspectiveUpIn'
    out: 'transition.perspectiveDownOut'

Transitioner.transition
  fromRoute: 'slideUp'
  toRoute: 'main'
  velocityAnimaton:
    in: ['transition.perspectiveDownIn', {duration: 2000, easing: 'ease-out'}]
    out: ['transition.perspectiveUpOut', {duration: 2000, easing: 'ease-out'}]

Transitioner.transition
  fromRoute: 'main'
  toRoute: 'slideDown'
  velocityAnimaton: 
    in: 'transition.pushDownIn'
    out: 'transition.pushUpOut'

Transitioner.transition
  fromRoute: 'slideDown'
  toRoute: 'main'
  velocityAnimaton:
    in: 'transition.pushUpIn'
    out: 'transition.pushDownOut'

Transitioner.transition
  fromRoute: 'main'
  toRoute: 'fade'
  velocityAnimaton: 
    in: 'transition.fadeIn'
    out: 'transition.fadeOut'

Transitioner.transition
  fromRoute: 'fade'
  toRoute: 'main'
  velocityAnimaton: 
    in: 'transition.fadeIn'
    out: 'transition.fadeOut'
