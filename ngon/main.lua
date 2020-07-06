local graph = require('graphlib')


function love.load()
	graph.start(3, 2.1)
 	graph.setOrigin(1.5, 1.05)
end


function love.update()
		
end

function love.draw()
	N = 12
	X1 = {}
	Y1 = {}
 	for i = 0, 2*math.pi, 2*math.pi/N do
 		table.insert(X1, math.cos(i))
 		table.insert(Y1, math.sin(i))
 		-- table.insert appends a list
 	end
 	-- populate arrays with coordinates. We calculate array 
 	-- of coordinates once, then use it
 	for i = 1, N-1 do
 		for j = i+1, N do
 			graph.line(X1[i], Y1[i], X1[j], Y1[j])
 		end
 	end
end