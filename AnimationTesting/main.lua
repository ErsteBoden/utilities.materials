function love.load()
frame1 = love.graphics.newImage( "knite1.png" ) -- = love.graphics.newImage( "hahaw.png" )
frame1:setFilter("nearest", "nearest")
frame2 = love.graphics.newImage( "knite2.png" )
frame2:setFilter("nearest", "nearest")
frame3 = love.graphics.newImage( "knite3.png" )
frame3:setFilter("nearest", "nearest")
anim = { frame1, frame2, frame3 } --animation block syntax animation.1, animation.2 ...
num = 1
charframe = "nothing"
etime = love.timer.getTime()
inverse = 0
speed = 0.1

end
--function love.mousepressed( "wd" )
--speed = speed - 0.001
--end

--function love.mousepressed( "wu" )
--speed = speed + 0.001
--end
function animationEngine(animation, value)
erste = animation[value]
love.graphics.print(tostring(erste), 100, 200)
end
function MouseAnimationSpeedControl()

 if love.mouse.isDown("r") then
	speed = speed - 0.001
end 

 if love.mouse.isDown("wd") then
	speed = speed - 0.001
end 

 if love.mouse.isDown("wu") then
	speed = speed + 0.001
end 

 if love.mouse.isDown("l") then
	speed = speed + 0.001
end 

end

function love.update(dt)
MouseAnimationSpeedControl()
CalcFunc(dt)
end

function love.draw()
love.graphics.print( tostring(num) , 100, 100)
love.graphics.print( tostring(etime) , 200, 300)
love.graphics.print( "Yay, working order" , 220, 330)
   love.graphics.print("Current FPS: "..tostring(love.timer.getFPS( )), 10, 10)
      love.graphics.print("Time between anim frames: "..tostring(speed), 20, 40)

--animation engine test
animationEngine(anim, num)
love.graphics.print( "CURRENT FRAME " .. tostring(num) .. " IS FUNCTIONAL", 200, 200)
love.graphics.draw( erste , 50, 50, 0 ,10, 10 ) --x, y, r, sx, sy, ox, oy, kx, ky 
end

function CalcFunc(dt)
etime = etime + dt
if   etime > speed then
	etime = 0
		
	if inverse == 0 then
		num = num + 1	
	end
	if inverse == 1 then
			num = num - 1
		end
		
end		


if num == 3 then
inverse = 1
end

if  num == 1 then
inverse = 0
end
	
end




