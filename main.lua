function love.load()
    -- Use love.filesystem.read instead for simpler file reading
    text = love.filesystem.read("file.txt")
end

function love.update(dt)
    -- Update logic goes here, not drawing
end

function love.draw()
    local y = 100
    for tex in text:gmatch("%a+") do
        love.graphics.print(tex, 100, y)
        y = y + 20 -- Add some vertical spacing between words
    end
end