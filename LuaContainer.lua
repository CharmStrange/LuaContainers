-- LuaContainers.lua

-- List implementation
List = {}

function List:new()
    local list = {elements = {}}
    setmetatable(list, self)
    self.__index = self
    return list
end

function List:insert(value)
    table.insert(self.elements, value)
end

function List:remove(index)
    table.remove(self.elements, index)
end

function List:clear()
    self.elements = {}
end

function List:check()
    print("The length of List : " .. #self.elements)
    for i = 1, #self.elements do
        print(self.elements[i])
    end
end

-- Stack implementation
Stack = {}

function Stack:new()
    local stack = {elements = {}}
    setmetatable(stack, self)
    self.__index = self
    return stack
end

function Stack:push(value)
    table.insert(self.elements, value)
end

function Stack:pop()
    return table.remove(self.elements)
end

function Stack:clear()
    self.elements = {}
end

function Stack:check()
    print("The length of List : " .. #self.elements)
    for i = 1, #self.elements do
        print(self.elements[i])
    end
end

-- Queue implementation
Queue = {}

function Queue:new()
    local queue = {elements = {}}
    setmetatable(queue, self)
    self.__index = self
    return queue
end

function Queue:enqueue(value)
    table.insert(self.elements, value)
end

function Queue:dequeue()
    return table.remove(self.elements, 1)
end

function Queue:isEmpty()
    return #self.elements == 0
end

function Queue:clear()
    self.elements = {}
end

function Queue:check()
    print("The length of List : " .. #self.elements)
    for i = 1, #self.elements do
        print(self.elements[i])
    end
end

-- Deque implementation
Deque = {}

function Deque:new()
    local deque = {first = 0, last = -1, elements = {}}
    setmetatable(deque, self)
    self.__index = self
    return deque
end

function Deque:pushFront(value)
    local first = self.first - 1
    self.first = first
    self.elements[first] = value
end

function Deque:pushBack(value)
    local last = self.last + 1
    self.last = last
    self.elements[last] = value
end

function Deque:popFront()
    local first = self.first
    if first > self.last then
        return nil
    end
    local value = self.elements[first]
    self.elements[first] = nil -- to allow garbage collection
    self.first = first + 1
    return value
end

function Deque:popBack()
    local last = self.last
    if self.first > last then
        return nil
    end
    local value = self.elements[last]
    self.elements[last] = nil -- to allow garbage collection
    self.last = last - 1
    return value
end

function Deque:clear()
    self.first = 0
    self.last = -1
    self.elements = {}
end

function Deque:check()
    print("The length of List : " .. #self.elements)
    for i = 1, #self.elements do
        print(self.elements[i])
    end
end

-- LuaContainers table containing all container types
LuaContainers = {List = List, Stack = Stack, Queue = Queue, Deque = Deque}

return LuaContainers
