local anim8 = require('libs.anim8.anim8')

local image, animation




function love.load()
 image = love.graphics.newImage('assets/character.png')
 local g = anim8.newGrid(32,32, image:getWidth(), image:getHeight(), 7, 133)
 animation = anim8.newAnimation(g('1-4', 1), 0.1)
end

function love.update(dt)
  animation:update(dt)
end

function love.draw()
  animation:draw(image, 100, 200)
end
