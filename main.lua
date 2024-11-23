function love.load()
    rect = {}
    rect.x = 100
    rect.y = 100
    rect.width = 70
    rect.height = 90
    rect.speed = 200
end

function love.update(dt)
    if love.keyboard.isDown("d") then
        rect.x = rect.x + rect.speed * dt
    end

    if love.keyboard.isDown("a") then
        rect.x = rect.x - rect.speed * dt
    end

    if love.keyboard.isDown("w") then
        rect.y = rect.y - rect.speed * dt
    end

    if love.keyboard.isDown("s") then
        rect.y = rect.y + rect.speed * dt
    end
end

function love.draw()
    love.graphics.rectangle("line", rect.x, rect.y, rect.height, rect.width)
end
