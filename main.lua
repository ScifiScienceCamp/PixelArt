local utf8 = require("utf8")

require('Picture')
require('GUI')

words = ""

function love.load()
  Picture:load(400, 300)
  GUI:load()
end

function love.draw()
  Picture:draw()
  GUI:draw()
  love.graphics.print(words, 10, 300)
end

function love.update(dt)
  Picture:update()
  GUI:update(dt)
end

function love.mousepressed(x, y, button)  gooi.pressed() end
function love.mousereleased(x, y, button) gooi.released() end

function love.keypressed(key, scancode, isrepeat)
  gooi.keypressed(key, scancode, isrepeat)
  
end

function love.keyreleased(key, scancode)
  gooi.keyreleased(key, scancode)
end

function love.textinput(text)
  gooi.textinput(text)
end
