DrawableImage = {}

function DrawableImage:load(width, height)

  self.data = love.image.newImageData( width, height )
  self.width = width
  self.height = height
  self.image = love.graphics.newImage(self.data)
  
  self.x = (love.graphics.getWidth() - width) / 2
  self.x = (love.graphics.getHeight() - height) / 2

  for i=0, width-1 do
    for j=0, height-1 do
      self.data:setPixel( i, j, 255, 255, 255, 255 )
    end
  end

  self.image:refresh()

end

function DrawableImage:draw()
  self.image:refresh()
  love.graphics.draw(self.image, self.x)
end
