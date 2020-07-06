local graph = require('graphlib')

function love.load()
	graph.start(3,2.1)
 	graph.setOrigin(1.5,1.05)
end


function love.update()
		
end

function love.draw()
	--N = io.read("*n")
 	N=12
 	graph.line (1, 0, -1, 0)
 	graph.line (0, 1, 0, -1)
 	for i = 1, N do
 		id1 = i/N
 		id2 = (N+1-i)/N
 		graph.line (id1, 0, 0, id2)
 		graph.line (0, id2, -id1, 0)
 		graph.line (-id1, 0, 0, -id2)
 		graph.line (0, -id2, id1, 0)
 	end

end