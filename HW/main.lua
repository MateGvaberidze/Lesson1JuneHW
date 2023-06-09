push = require 'push'
Class = require 'class'

require 'Paddle'
require 'Ball'
require 'UtilP'
require 'UtilB'

SPEED = 80
VIRTUAL_WIDTH = 432
VIRTUAL_HEIGHT = 243

WINDOW_WIDTH = 1280
WINDOW_HEIGHT = 720

gameState = 'play'

function love.load()
  paddleTextures = love.graphics.newImage('graphics/Paddles_Full.png')
  paddleFrames = GenerateQuadsP(paddleTextures, 32, 9)

  ballTextures = love.graphics.newImage('graphics/Balls_Full.png')
  ballFrames = GenerateQuadsB(ballTextures, 14, 14)

  love.graphics.setDefaultFilter('nearest', 'nearest')
  push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_HEIGHT, WINDOW_WIDTH, WINDOW_HEIGHT, {
    fullscreen = false,
    resizable = false,
    vsync = true
    })

  paddles = {}

  balls = {}

  GenerateBalls()
  
  GeneratePaddles()

end

function love.update(dt)
  
end

function love.keypressed(key)
end

function love.draw()
  push:start()
  for kp, paddle in pairs(paddles) do
    paddle:render()
  end

  for kb, ball in pairs(balls) do
    ball:render()
  end

  push:finish()
end

function GeneratePaddles()
  for y = 0, 6 do 
    for x = 0, VIRTUAL_WIDTH / 32 - 1 do
      table.insert(paddles, Paddle(x*32, y * 9, 1 + y))
    end
  end

end

function GenerateBalls()
  for yb = 0, 5 do 
    for xb = 0, VIRTUAL_WIDTH / 14 - 1 do
      table.insert(balls, Ball(xb*14, yb * 14, 1 + yb))
    end
    print(yb)
  end

end