
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


slideRight = 
  in: (node, next) ->
    $node = $(node)
    $.Velocity.hook($node, "translateX", "100%");
    $node.insertBefore(next)
      .velocity {translateX: ['0%', '100%']},
        duration: 500
        easing: 'ease-in-out'
        queue: false
  out: (node) ->
    $node = $(node)
    $node.velocity {translateX: '-100%'},
      duration: 500
      easing: 'ease-in-out'
      queue: false
      complete: -> 
        $node.remove()

slideLeft = 
  in: (node, next) ->
    $node = $(node)
    $.Velocity.hook($node, "translateX", "-100%");
    $node.insertBefore(next)
      .velocity {translateX: ['0%', '-100%']},
        duration: 500
        easing: 'ease-in-out'
        queue: false
  out: (node) ->
    $node = $(node)
    $node.velocity {translateX: '100%'},
      duration: 500
      easing: 'ease-in-out'
      queue: false
      complete: -> 
        $node.remove()

slideUp = 
  in: (node, next) ->
    $node = $(node)
    $.Velocity.hook($node, "translateY", "100%");
    $node.insertBefore(next)
      .velocity {translateY: ['0%', '100%']},
        duration: 500
        easing: 'ease-in-out'
        queue: false
  out: (node) ->
    $node = $(node)
    $node.velocity {translateY: '-100%'},
      duration: 500
      easing: 'ease-in-out'
      queue: false
      complete: -> 
        $node.remove()

slideDown = 
  in: (node, next) ->
    $node = $(node)
    $.Velocity.hook($node, "translateY", "-100%");
    $node.insertBefore(next)
      .velocity {translateY: ['0%', '-100%']},
        duration: 500
        easing: 'ease-in-out'
        queue: false
  out: (node) ->
    $node = $(node)
    $node.velocity {translateY: '100%'},
      duration: 500
      easing: 'ease-in-out'
      queue: false
      complete: -> 
        $node.remove()

Transitioner.transition
  fromRoute: 'main'
  toRoute: 'slideLeft'
  velocityAnimaton: slideLeft

Transitioner.transition
  fromRoute: 'slideLeft'
  toRoute: 'main'
  velocityAnimaton: slideRight


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
  velocityAnimaton: slideDown

Transitioner.transition
  fromRoute: 'slideDown'
  toRoute: 'main'
  velocityAnimaton: slideUp


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
