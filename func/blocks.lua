blockFunc = {}

function blockFunc.drawBlock(blockID, x, y, blocks)

  x = ( x * 10 ) + 512
  y = ( y * 10 ) + 360
  --red, green, blue, alpha = blocks[blockID]["colour"]["red"], blocks[blockID]["colour"]["green"], blocks[blockID]["colour"]["blue"], blocks[blockID]["colour"]["alpha"] -- legacy only
  image = blocks[blockID]["image"]
  --love.graphics.setColor(red, green, blue, alpha) -- legacy only

  --print("drawing block at x,y: " .. x .. ", " .. y .. " ID: " .. blockID) -- debug code

  if blockID == 6 then love.graphics.setColor(255, 255, 255, 128) end
  if blockID ~= 0 then love.graphics.draw(image, x, 720-y, 0, 1, 1, 5, 5) end
  --love.graphics.polygon("fill", x - 5, 720 - (y - 5), x + 5, 720 - (y - 5), x + 5, 720 - (y + 5), x - 5, 720 - (y + 5)) -- legacy only

end

function blockFunc.getID(block, blocks)

  local ID = nil
  for i = 0, #blocks do
    if blocks[i]["name"] == block then
      ID = i
    end
  end
  return ID
end

return blockFunc
