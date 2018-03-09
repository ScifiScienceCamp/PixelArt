Picture = {}

function Picture:load(width, height)

  self.data = love.image.newImageData( width, height )
  self.width = width
  self.height = height
  self.image = love.graphics.newImage(self.data)

  self.x = (love.graphics.getWidth() - width) / 2
  self.y = (love.graphics.getHeight() - height) / 2

  for i=0, width-1 do
    for j=0, height-1 do
      self.data:setPixel( i, j, 255, 255, 255, 255 )
    end
  end

  self.image:refresh()

end

function Picture:draw()
  --self.image:refresh()
  love.graphics.draw(self.image, self.x, self.y)
end

function Picture:update()

  x, y = love.mouse.getPosition()

  if x > self.x and x < self.x + self.width then
    if y > self.y and y < self.y + self.height then
      if love.mouse.isDown(1) then
        self.data:setPixel(x-self.x, y-self.y, 0, 0, 0, 255 )
        self.image:refresh()
      end
    end
  end

end
