-- LuaContainers.lua
-- 업그레이드 버전: 기존의 List, Stack, Queue, Deque, BinaryTree 컨테이너에 보완 기능을 추가했습니다.

-- List 보완
function List:find(value)
    for i, v in ipairs(self.elements) do
        if v == value then
            return i -- 찾은 값의 인덱스 반환
        end
    end
    return nil -- 값이 없을 경우 nil 반환
end

function List:size()
    return #self.elements
end

function List:isEmpty()
    return #self.elements == 0
end

-- Stack 보완
function Stack:peek()
    return self.elements[#self.elements] -- Stack의 최상단 요소 확인
end

function Stack:size()
    return #self.elements
end

function Stack:isEmpty()
    return #self.elements == 0
end

-- Queue 보완
function Queue:peek()
    return self.elements[1] -- Queue의 첫 번째 요소 확인
end

function Queue:size()
    return #self.elements
end

-- Deque 보완
function Deque:peekFront()
    return self.elements[self.first] -- Deque의 앞쪽 요소 확인
end

function Deque:peekBack()
    return self.elements[self.last] -- Deque의 뒤쪽 요소 확인
end

function Deque:size()
    return self.last - self.first + 1
end

function Deque:isEmpty()
    return self.first > self.last
end

-- BinaryTree 보완
function BinaryTree:find(value)
    return self:_findNode(self.root, value)
end

function BinaryTree:_findNode(node, value)
    if not node then
        return false -- 노드가 없으면 false 반환
    end
    if node.value == value then
        return true -- 값을 찾으면 true 반환
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

-- LuaContainers 테이블
LuaContainers = {List = List, Stack = Stack, Queue = Queue, Deque = Deque, BinaryTree = BinaryTree}

return LuaContainers
