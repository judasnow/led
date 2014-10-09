
do ->

  class Screen

    _screen-bitmap = []

    (pxls-size, rslution-x, rslution-y) ->

      @pxls-size = pxls-size
      @rslution-x = rslution-x
      @rslution-y = rslution-y

      @$screen = $ \#screen
      @$p = $ '<div class="p">'

    init: ->
      #设置 screen
      @$screen.css do
        width: "#{@pxls-size * @rslution-x}px"
        height: "#{@pxls-size * @rslution-y}px"
        display: \inline-block

    clear: ->

    set-bit-map: ->
      _screen-bitmap = [[0] * rslution-y] * rslution-x

    render: ->

  screen = new Screen 4 120 80
  screen.init!

