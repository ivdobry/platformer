Player = Object:extend()

function Player:new()
    self.image = love.graphics.newImage("/assets/panda.png")
    self.x = 300
    self.y = 20
    self.speed = 500
    self.width = self.image:getWidth()
end

function Player:update(dt)
    if love.keyboard.isDown("a") then
        self.x = self.x - self.speed * dt
    end

    if love.keyboard.isDown("d") then
        self.x = self.x + self.speed * dt
    end

    local window_width = love.graphics.getWidth()

    if self.x < 0 then
        self.x = 0
    elseif self.x + self.width > window_width then
        self.x = window_width - self.width
    end
end

function Player:draw()
    love.graphics.draw(self.image, self.x, self.y)
end

function Player:keyPressed(key)
    playerPosition = (self.x + self.width / 2) - 5

    if key == "space" then
        table.insert(listOfBullets, Bullet(playerPosition, self.y))
    end
end
