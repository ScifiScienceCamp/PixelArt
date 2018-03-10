require "gooi"
--require("Picture")

GUI = {}

function GUI:load()

  self.r = gooi.newSlider({
      value = 0.3,
      x = 4,
      y = 8,
      w = 100,
      h = 25
  })

  self.g = gooi.newSlider({
      value = 0.3,
      x = 4,
      y = 40,
      w = 100,
      h = 25
  })

  self.b = gooi.newSlider({
      value = 0.3,
      x = 4,
      y = 72,
      w = 100,
      h = 25
  })


end


function GUI:draw()
  gooi.draw()
end

function GUI:update(dt)
  gooi.update(dt)
end
