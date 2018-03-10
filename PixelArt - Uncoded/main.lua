local utf8 = require("utf8")

require('Picture')
require('GUI')

words = ""

function love.load()

end

function love.draw()
  
end

function love.update(dt)
  
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
