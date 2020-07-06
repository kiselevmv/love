-- Squares
local graph = require('graphlib')

	X = {}
	Y = {}
	V = {}
	W = {}
	Mu = 0.1
	Um=1 - Mu


function love.load()
	graph.start(3, 2.1)
 	graph.setOrigin(1.5, 1.05)
end


function love.update()
		
end

function love.draw()
	X={1, 1, -1, -1,}
	Y={1, -1, -1, 1,}
	for i = 1, 21 do
		graph.line(X[4], Y[4], X[1], Y[1])
		for j = 1, 4 do
			nj = j + 1
			if nj == 5 then 
				nj = 1
			end
			graph.line(X[j], Y[j], X[nj], Y[nj])
			
			X[j] = Um*X[j] + Mu*X[nj]
			Y[j] = Um*Y[j] + Mu*Y[nj]
		end
--		for j = 1, 4 do
--			X[j]=V[j]
--			Y[j]=W[j]
--		end
--		X = V
--		Y = W
	end
end