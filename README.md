# LuaContainers (v1.0)
LuaContainers is a container library written in Lua. This library provides various data structures such as lists, stacks, queues, and deques to help manage data more easily in Lua programs.

### Installation
To use this library, you need a Lua environment. Download the LuaContainers.lua file and include it in your Lua scripts.

### Structure of Directory
```
Directory/
│
├── LuaContainers.lua
└── your_main_file.lua
```

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

#### Example
```

```

### Contributing
Bug reports, feature requests, and pull requests are welcome. Please feel free to create issues or send pull requests on the GitHub repository.

### License
This software is distributed under the MIT License. See the [LICENSE file](LICENSE) for more information.
