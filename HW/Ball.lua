Ball = Class{}

function Ball:init(xb, yb, color)
  self.tier = 0
  self.color = color
  
  self.x = xb
  self.y = yb
  self.width = 14
  self.height = 14
  
  self.posx = 0
  self.posy = 0
end

function Ball:render()
  quad = love.graphics.newQuad(self.posx, self.posy, 14, 14, ballTextures:getDimensions())

  love.graphics.draw(ballTextures, ballFrames[self.color * 3 - 2], self.x, self.y)
end