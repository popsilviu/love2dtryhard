spped = 150
bottomY = 420
playerFloorY = 370
jumpAccel = 16
initGravity = 200
conter = 0 
obstavles = {}
lastTimeObstavle = 1000
gravity = 200
jumpSND = nil
hitSND = nil
player = {x = 100, y = playerFloorY, jumping = false, accel = jumpAccel, img = nil}
font = nil
isGameOver = false

function love.load()
  love.graphics.setBackgroundColor(189, 195, 255)
  player.img = love.graphics.newImage('dude.png')
  jumpSND = love.audio.newSource('jump2.wav')
  hitSND = love.audio.newSource('hit.wav')
  pointSND = love.audio.newSource('point.wav')
  font = love.graphics.setNewFont(35)
end

function love.update(dt)
	--exit
 	if love.keyboard.isDown('escape') then
 		love.love.event.push('quit')
 	end

 	--main loop
 	if isGameOver == false then
 		--input
 		if love.keyboard.isDown('a') and player.jumping == false then
 			love.audio.play(jumpSND)
 			player.jumping = true
 		end
end

function love.draw()
end