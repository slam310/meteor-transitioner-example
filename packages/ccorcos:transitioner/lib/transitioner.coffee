debug = (args...) -> 
  console.log.apply console, args


reverseAnimations = {}

animationPair = (a, b) ->
  reverseAnimations[a] = b
  reverseAnimations[b] = a

reverseAnimation = (a) -> 
  reverseAnimations[a]


animations = {}

animations.none = ->
  insertElement: (node, next) ->
    $node = $(node)
    $node.insertBefore(next)
  removeElement: (node) ->
    $node = $(node)
    $node.remove()

animations.slideRight = (duration, easing) ->
  insertElement: (node, next) ->
    debug "insert slideRight"
    $node = $(node)
    $.Velocity.hook($node, "translateX", "100%");
    $node.insertBefore(next)
      .velocity {translateX: '0%'},
        duration: duration
        easing: easing
        queue: false
  removeElement: (node) ->
    debug "remove slideRight"
    $node = $(node)
    $node.velocity {translateX: '-100%'},
      duration: duration
      easing: easing
      queue: false
      complete: -> 
        # remove when animation is complete
        $node.remove()

animations.slideLeft = (duration, easing) ->
  insertElement: (node, next) ->
    debug "insert slideLeft"
    $node = $(node)
    $.Velocity.hook($node, "translateX", "-100%");
    $node.insertBefore(next)
      .velocity {translateX: '0%'},
        duration: duration
        easing: easing
        queue: false
  removeElement: (node) ->
    debug "remove slideLeft"
    $node = $(node)
    $node.velocity {translateX: '100%'},
      duration: duration
      easing: easing
      queue: false
      complete: -> 
        # remove when animation is complete
        $node.remove()

animationPair 'slideLeft', 'slideRight'

# check that iron route exists
class TransitionerClass
  constructor: (@default='none') ->
  
  transitions: []
  
  transition: (fromRoute, toRoute, animationName, options) ->
    duration = options?.duration or 600
    easing = options?.easing or 'ease-in-out'
    # this is Router.route but for transitions
    # TODO: check that the routes exist in iron router.
    # TODO: check that the animation exists.
    @transitions.push {fromRoute, toRoute, animationName, duration, easing}
    # the reverse
    reverse = reverseAnimation(animationName)
    if reverse
      @transitions.push({fromRoute: toRoute, toRoute: fromRoute, animationName:reverse, duration, easing})
    return

  getAnimation: (fromRoute, toRoute) ->
    transitionObj = _.find @transitions, (transition) ->
      transition.fromRoute is fromRoute and transition.toRoute is toRoute
    if transitionObj?.animationName and transitionObj?.animationName of animations
      return animations[transitionObj.animationName](transitionObj.duration, transitionObj.easing)
    else
      return animations[@default]()

Transitioner = new TransitionerClass()

Template.transitioner.rendered = ->
  debug "rendered"
  lastRoute = null
  currentRoute = null

  @autorun ->
    debug "autorun"
    lastRoute = currentRoute
    currentRoute = Router.current().route.getName()
    debug "last: ", lastRoute
    debug "current: ", currentRoute

  @find("#transitioner")?._uihooks =
    insertElement: (node, next) ->
      Transitioner.getAnimation(lastRoute, currentRoute).insertElement(node, next)

    removeElement: (node) ->
      Transitioner.getAnimation(lastRoute, currentRoute).removeElement(node)

