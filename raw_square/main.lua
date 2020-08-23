local graph = require('graphlib')

function love.load()
	graph.start( 12, 12 )
 	graph.setOrigin( 1, 1 )
end

function make_row( N )
	-- body
	local row = {}
	local i = 1
	local a = 0
	while a < 4*N do
		a = a + i
		row[a] = true
	end
	--print(row)
	return row
end

function love.update()
		
end

function love.draw()
	--N = io.read("*n")
 	N=12
 	row = make_row ( N )
 	PX = {}
 	PY = {}

 	for i = 1, N do
 		PX[i] = 10/i
 		PY[i] = 0
 		PX[i*2] = 0
 		PY[i*2] = 10/i
 		PX[i*3] = 10/i
 		PY[i*3] = 10
 		PX[i*4] = 10
 		PY[i*4] = 10/i
 	end

 	graph.line (0, 10, 10, 10)
 	graph.line (0, 0, 10, 0)
 	graph.line (10, 0, 10, 10)
 	graph.line (0, 0, 0, 10)
 	for i = 1, 4*N do
 		for j = 1, 4*N do
 			id = math.abs(j - i)
 			if row[id] == true then graph.line(PX[i], PY[i], PX[j], PY[j]) end
 		end
 	end
end
