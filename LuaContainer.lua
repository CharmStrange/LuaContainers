-- LuaContainers.lua
-- Download this file and require as you want!

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

-- List additional features
function List:find(value)
    for i, v in ipairs(self.elements) do
        if v == value then
            return i -- Return index if value is found
        end
    end
    return nil -- Return nil if value is not found
end

function List:size()
    return #self.elements
end

function List:isEmpty()
    return #self.elements == 0
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
    print("'TOP' element in Stack : " .. #self.elements)
    for i = 1, #self.elements do
        print(self.elements[i])
    end
end

-- Stack additional features
function Stack:peek()
    return self.elements[#self.elements] -- Peek at top element
end

function Stack:size()
    return #self.elements
end

function Stack:isEmpty()
    return #self.elements == 0
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

-- Queue additional features
function Queue:peek()
    return self.elements[1] -- Peek at front element
end

function Queue:size()
    return #self.elements
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

-- Deque additional features
function Deque:peekFront()
    return self.elements[self.first] -- Peek at front element
end

function Deque:peekBack()
    return self.elements[self.last] -- Peek at back element
end

function Deque:size()
    return self.last - self.first + 1
end

function Deque:isEmpty()
    return self.first > self.last
end


-- TreeNode implementation
TreeNode = {}

function TreeNode:new(value)
    local node = {value = value, left = nil, right = nil}
    setmetatable(node, self)
    self.__index = self
    return node
end


-- BinaryTree implementation
BinaryTree = {}

function BinaryTree:new()
    local tree = {root = nil}
    setmetatable(tree, self)
    self.__index = self
    return tree
end

function BinaryTree:insert(value)
    if not self.root then
        self.root = TreeNode:new(value)
    else
        self:_insertNode(self.root, value)
    end
end

function BinaryTree:_insertNode(node, value)
    if value < node.value then
        if not node.left then
            node.left = TreeNode:new(value)
        else
            self:_insertNode(node.left, value)
        end
    else
        if not node.right then
            node.right = TreeNode:new(value)
        else
            self:_insertNode(node.right, value)
        end
    end
end

function BinaryTree:traverseInOrder(callback)
    self:_traverseInOrder(self.root, callback)
end

function BinaryTree:_traverseInOrder(node, callback)
    if node then
        self:_traverseInOrder(node.left, callback)
        callback(node.value)
        self:_traverseInOrder(node.right, callback)
    end
end

-- BinaryTree additional features
function BinaryTree:find(value)
    return self:_findNode(self.root, value)
end

function BinaryTree:_findNode(node, value)
    if not node then
        return false -- Return false if node is not found
    end
    if node.value == value then
        return true -- Return true if value is found
    elseif value < node.value then
        return self:_findNode(node.left, value)
    else
        return self:_findNode(node.right, value)
    end
end

function BinaryTree:height()
    return self:_nodeHeight(self.root)
end

function BinaryTree:_nodeHeight(node)
    if not node then
        return 0
    end
    local leftHeight = self:_nodeHeight(node.left)
    local rightHeight = self:_nodeHeight(node.right)
    return math.max(leftHeight, rightHeight) + 1
end

function BinaryTree:isEmpty()
    return self.root == nil
end


-- LuaContainers table containing all container types
LuaContainers = {List = List, Stack = Stack, Queue = Queue, Deque = Deque, BinaryTree = BinaryTree}

return LuaContainers
