	Xorig=0
	Yorig=0

function start(horiz, vert)
	XYScale=love.graphics.getWidth()/horiz
	YScale=love.graphics.getHeight()/vert
	if XYScale > YScale then
		XYScale = YScale
	end
	love.graphics.scale(XYScale)
	love.graphics.push() 
end

function X(z)
	return (Xorig+z)*XYScale+0.5
end

function Y(z)
	return (Yorig+z)*XYScale+0.5
end

function setOrigin(Xmove, Ymove)
	Xorig = Xorig+Xmove  -- body
	Yorig = Yorig+Ymove
end

function line(x1, y1, x2, y2)
	love.graphics.line(X(x1), Y(y1), X(x2), Y(y2))	
end

function love.load()
	start(30,20)
 	setOrigin(15,10)
end


function love.update()
		
end

function love.draw()
 	line (7.5, 7.5, -7.5, 7.5)
 	line ( -7.5, 7.5, -7.5, -7.5)
 	line (-7.5, -7.5, 7.5, -7.5)
 	line (7.5, -7.5, 7.5, 7.5)
end