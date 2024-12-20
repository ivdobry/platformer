function love.load()
    image = love.graphics.newImage("/assets/tile.png")

    width = image:getWidth()
    height = image:getHeight()

    tileMap = {
        { 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 },
        { 1, 2, 2, 2, 2, 2, 2, 2, 2, 1 },
        { 1, 2, 3, 4, 5, 5, 4, 3, 2, 1 },
        { 1, 2, 2, 2, 2, 2, 2, 2, 2, 1 },
        { 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 }
    }

    colors = {
        { 1, 1, 1 },
        { 1, 0, 0 },
        { 1, 0, 1 },
        { 0, 0, 1 },
        { 0, 1, 1 }
    }
end

function love.draw()
    for i, row in ipairs(tileMap) do
        for j, tile in ipairs(row) do
            if tile ~= 0 then
                love.graphics.setColor(colors[tile])

                love.graphics.draw(image, j * width, i * height)
            end
        end
    end
end
