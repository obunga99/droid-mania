function love.load()
	file = love.filesystem.openFile("file.txt", "r")
	text = file:read("*a")
	file:close()
end

function love.update(dt)
	for tex in text:gmatch("%a+") do
		love.graphics.print(tex, 100, 100)
	end
end

function love.draw()

end

