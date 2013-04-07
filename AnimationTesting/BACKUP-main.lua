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

end

function animationEngine(animation, value)
erste = animation[value]
end

function love.update(dt)

CalcFunc(dt, inverse)
end

function love.draw()
love.graphics.print( tostring(num) , 100, 100)
love.graphics.print( tostring(etime) , 200, 300)
love.graphics.print( "Yay, working order" , 220, 330)

--animation engine test
animationEngine(anim, num)
love.graphics.print( "CURRENT FRAME " .. tostring(erste) .. " IS FUNCTIONAL", 200, 200)
love.graphics.draw( erste , 50, 50, 0 ,10, 10 ) --x, y, r, sx, sy, ox, oy, kx, ky 
end

function CalcFunc(dt, inverse)
etime = etime + dt
inverse = 0
if   etime > 0.5
		then
		etime = 0
end		
if inverse == 0 then
		num = num + 1	
end
	if inverse == 1 then
	num = num - 1
	end
		
if num == 4 then
inverse = 1
end

if  num == 1 then
inverse = 0
end
	
	

end



