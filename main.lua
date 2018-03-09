require('Picture')
require('GUI')

function love.load()
  Picture:load(400, 300)
  GUI:load()
end

function love.draw()
  Picture:draw()
  GUI:draw()
end

function love.update()
  Picture:update()
  GUI:update()
end

function love.mousepressed(x, y, button)  gooi.pressed() end
function love.mousereleased(x, y, button) gooi.released() end
