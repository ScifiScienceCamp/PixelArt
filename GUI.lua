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

  self.name = gooi.newText({
    text = "Untitled",
    x = love.graphics.getWidth()-150,
    y = 8,
    w = 146,
    h = 30
  })

  self.save = gooi.newButton({
    text = "Save Image",
    x = love.graphics.getWidth()-150,
    y = 45,
    w = 146,
    h = 30
  })

  self.save:onRelease(function()
    gooi.confirm({
      text = "Save image as:\n\""..self.name:getText()..".png\"",
      ok = function()
        Picture.data:encode("png", self.name:getText()..".png")
      end
    })
  end)

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

function GUI:update(dt)
  gooi.update(dt)
end
