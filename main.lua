function love.load()
    -- Use love.filesystem.read instead for simpler file reading
    text = love.filesystem.read("example.osu")
end

function love.update(dt)
    -- Update logic goes here, not drawing
end

function love.draw()
    local y = 100
    for tex in text:gmatch(".[%a.]") do
	    if tex == "General" then
		    for tex2 in text:gmatch("%a+.:%s%a+") do
			    local y = 100
			    love.graphics.print(tex2, 100, y)
			    y = y + 20
		    end
	    end
    end
end
