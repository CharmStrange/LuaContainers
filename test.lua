-- test.lua
-- example
-- Create a Queue for enemy movement
local LuaContainers = require("LuaContainers")

local enemyMovementQueue = LuaContainers.Queue:new()

-- Function to add enemy movement commands to the queue
function addEnemyMovement(direction)
    enemyMovementQueue:enqueue(direction)
end

-- Function to execute enemy movements
function executeEnemyMovements()
    while not enemyMovementQueue:isEmpty() do
        local direction = enemyMovementQueue:dequeue()
        moveEnemy(direction)
    end
end

-- Dummy function to simulate enemy movement
function moveEnemy(direction)
    print("Enemy moves " .. direction)
end

-- Add some enemy movement commands to the queue
addEnemyMovement("left")
addEnemyMovement("up")
addEnemyMovement("right")
addEnemyMovement("down")

-- Execute enemy movements
executeEnemyMovements()
