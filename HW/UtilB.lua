function GenerateQuadsB(atlas, tilewidth, tileheight)
  local sheetwidth = atlas:getWidth() / tilewidth --this gives us the amount of tiles on the x axis
  local sheetheight = atlas:getHeight() / tileheight --this gives us the amount of tiles on the y axis
  
  local sheetCounter = 1
  local spritesheet = {}
  for yb = 0, sheetheight - 1 do
    for xb = 0, sheetwidth - 1 do
      spritesheet[sheetCounter] =
      love.graphics.newQuad(xb * tilewidth, yb * tileheight, tilewidth, tileheight, atlas:getDimensions())
        sheetCounter = sheetCounter + 1
    end
  end
  
  return spritesheet

end