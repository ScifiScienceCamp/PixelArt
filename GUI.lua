require "gooi"

GUI = {}

function GUI:load()

  self.r = gooi.newSlider({
      value = 0.3,
      x = 4,
      y = 8,
      w = 100,
      h = 25
  })

end

function GUI:getR()
  return self.r.value*255
end

function GUI:draw()
  gooi.draw()
end

function GUI:update()
  gooi.update()
end
