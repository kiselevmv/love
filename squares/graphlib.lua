local graphlib = {}

Xorig=0
Yorig=0

function graphlib.start(horiz, vert)
	XYScale=love.graphics.getWidth()/horiz
	YScale=love.graphics.getHeight()/vert
	if XYScale > YScale then
		XYScale = YScale
	end
	love.graphics.scale(XYScale)
	love.graphics.push() 
end

local function X(z)
	return (Xorig+z)*XYScale+0.5
end

local function Y(z)
	return (Yorig+z)*XYScale+0.5
end

function graphlib.setOrigin(Xmove, Ymove)
	Xorig = Xorig+Xmove  -- body
	Yorig = Yorig+Ymove
end

function graphlib.line(x1, y1, x2, y2)
	love.graphics.line(X(x1), Y(y1), X(x2), Y(y2))	
end

return graphlib