 function love.load()
	X = {}
	Y = {}
 	for i = 1, 4 do
 		for j = 1, 4 do
 			local k = 4*i+j-4
 			X[k]=j-3
 			Y[k]=i-3
 		end
 	end
 	X[2]=0
 	Y[2]=-3
 	X[8]=2
 	Y[8]=0
 	X[9]=-3
 	Y[9]=-1
 	X[15]=-1
 	Y[15]=2
end


function love.update()
	
end

function love.draw()
 	for i = 1, 16 do
 		for j = 1, 16 do
 			for k = 1, 16 do
 				xx = (16*X[i] + 4*X[j] + X[k])*2
 				yy = (16*Y[i] + 4*Y[j] + Y[k])*2
 				love.graphics.points(200+xx, 160+yy)
 				love.graphics.points(201+xx, 160+yy)
 				love.graphics.points(200+xx, 161+yy)
 				love.graphics.points(201+xx, 161+yy)
 			end
 		end
 	end	
end