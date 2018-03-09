require('Picture')

function love.load()
  Picture:load(400, 300)
end

function love.draw()
  Picture:draw()
end

function love.update()
  Picture:update()
end
