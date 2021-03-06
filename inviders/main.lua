local player = require 'player'
local invaders = require 'invaders'
local walls    = require 'walls'
local collisions = require 'collisions'
local bullets    = require 'bullets'

function love.keyreleased( key )
    if key == 'space' then
        bullets.fire( player )
    end
end

function love.load()
	invaders.construct_level()
	walls.construct_level()
end

function love.keyreleased( key )
end

function love.draw()
	player.draw()
	invaders.draw()
	bullets.draw()
	-- walls.draw()
end

function love.update( dt )
	player.update( dt )
	invaders.update( dt )
	collisions.resolve_collisions( invaders, walls, bullets )
    bullets.update( dt )
end