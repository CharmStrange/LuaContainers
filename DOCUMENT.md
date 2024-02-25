### Usage
#### List
```
-- Create a list
-- Load LuaContainers library
local LuaContainers = require("LuaContainers")

-- Create a list
local myList = LuaContainers.List:new()

-- Insert elements
myList:insert(5)
myList:insert(10)

-- Remove an element
myList:remove(1)

-- Clear all elements
myList:clear()
```

#### Stack
```
-- Load LuaContainers library
local LuaContainers = require("LuaContainers")

-- Create a stack
local myStack = LuaContainers.Stack:new()

-- Push elements
myStack:push("apple")
myStack:push("banana")

-- Pop an element
local item = myStack:pop()

-- Clear all elements
myStack:clear()
```

#### Queue
```
-- Load LuaContainers library
local LuaContainers = require("LuaContainers")

-- Create a queue
local myQueue = LuaContainers.Queue:new()

-- Enqueue elements
myQueue:enqueue("apple")
myQueue:enqueue("banana")

-- Dequeue an element
local item = myQueue:dequeue()

-- Clear all elements
myQueue:clear()
```

#### Deque
```
-- Load LuaContainers library
local LuaContainers = require("LuaContainers")

-- Create a deque
local myDeque = LuaContainers.Deque:new()

-- Push elements to front and back
myDeque:pushFront("apple")
myDeque:pushBack("banana")

-- Pop elements from front and back
local itemFromFront = myDeque:popFront()
local itemFromBack = myDeque:popBack()

-- Clear all elements
myDeque:clear()
```

#### Tree / Binary Tree
```
-- Load LuaContainers library
local LuaContainers = require("LuaContainers")

-- Create a new binary tree
local tree = LuaContainers.BinaryTree:new()

-- Insert some values into the tree
tree:insert(5)
tree:insert(3)
tree:insert(8)
tree:insert(1)
tree:insert(4)
tree:insert(7)
tree:insert(9)

-- Define a callback function for in-order traversal
local function printValue(value)
    print(value)
end

-- Traverse the tree in-order and print values
print("Values in the binary tree (in-order traversal):")
tree:traverseInOrder(printValue)

```

#### [Example](test.lua)
```
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
```
