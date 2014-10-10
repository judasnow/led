
do ->

  p = require 'prelude-ls'

  class Screen

    _screen-bitmap = []

    (pxls-size, rslution-x, rslution-y) ->

      @pxls-size = pxls-size
      @rslution-x = rslution-x
      @rslution-y = rslution-y

      @$screen = $ \#screen

    init: ->
      #设置 screen
      @$screen.css do
        width: "#{@pxls-size * @rslution-x}px"
        height: "#{@pxls-size * @rslution-y}px"
        display: \inline-block
      @set-bit-map!

    clear: ->

    _get_pix: (mate)->
      $p = $ '<div class="p">'
      $p.css do
        width: "#{@pxls-size}px"
        height: "#{@pxls-size}px"
      if mate == 1
        $p.addClass \p-light

      $p

    set-bit-map: (mate) ->
      @_screen-bitmap = [[0] * @rslution-y] * @rslution-x

    render: ->
      # 按行遍历 显示全部像素
      _that = @
      @$screen.html ''
      p.each (-> p.each (-> _that.dis_pxl it), it), @_screen-bitmap

    dis_pxl: (mate) ->
      @$screen.append @_get_pix mate

  screen = new Screen 8 32 21
  screen.init!
  screen.render!


