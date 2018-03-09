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

function GUI:getR()
  return self.r.value*255
end

function GUI:getG()
  return self.g.value*255
end

function GUI:getB()
  return self.b.value*255
end

function GUI:draw()
  gooi.draw()
  love.graphics.setColor(GUI:getR(), GUI:getG(), GUI:getB(), 255)
  love.graphics.rectangle("fill", 115, 8, 89, 89 )
  love.graphics.setColor(255,  255, 255, 255)
end

function GUI:update()
  gooi.update()
end
