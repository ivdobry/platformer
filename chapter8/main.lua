local listOfRectangles = {}

function createRect()
    local rect = {}
    rect.x = 100
    rect.y = 100
    rect.width = 70
    rect.height = 90
    rect.speed = 200

    table.insert(listOfRectangles, rect)
end

function love.keypressed(key)
    if key == "space" then
        createRect()
    end
end

function love.update(dt)
    for _, rect in ipairs(listOfRectangles) do
        rect.x = rect.x + rect.speed * dt
    end
end

function love.draw()
    for _, rect in ipairs(listOfRectangles) do
        love.graphics.rectangle("line", rect.x, rect.y, rect.height, rect.width)
    end
end
