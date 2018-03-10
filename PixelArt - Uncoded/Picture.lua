require("GUI")

Picture = {}

function Picture:load(width, height)

end

function Picture:draw()

end

function Picture:placeAtPoint(x, y)
  for i=x-GUI:getBrushWidth(), x+GUI:getBrushWidth() do
    for j=y-GUI:getBrushWidth(), y+GUI:getBrushWidth() do
      if i >= self.x and  i < self.x + self.width then
        if j >= self.y and j < self.y + self.height then
          self.data:setPixel(i-self.x, j-self.y, GUI:getR(), GUI:getG(), GUI:getB(), GUI:getA() )
        end
      end
    end
  end
end

function Picture:update()

 
end
