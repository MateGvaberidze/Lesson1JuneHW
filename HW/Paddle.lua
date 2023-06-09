Paddle = Class{}

function Paddle:init(x, y, color)
  self.tier = 0
  self.color = color
  
  self.x = x
  self.y = y
  self.width = 32
  self.height = 9
  
  self.posx = 0
  self.posy = 0
end

function Paddle:render()
  quad = love.graphics.newQuad(self.posx, self.posy, 32, 9, paddleTextures:getDimensions())

  love.graphics.draw(paddleTextures, paddleFrames[self.color * 3 - 2], self.x, self.y)
end