local Class = {
    a = 0
}

function Class:new(a)
    local self = setmetatable({}, Class)
    self.a = a
    
    return self
    
end

function Class:skib(key)
    --print(key)
    return self.a
end

function Class.__index(table, key)
    --print("__index ran")
    --print(key)
    --print(table)
    --print("asd"); print("asdasd")
    return Class[key]
end
-- local v = -10
-- repeat
--     v = v + 1
--     print(v)
    
-- until v == 10
local b = Class:new(2)
local c = Class:new()
-- b:skib()
-- Class.skib(b)
--b.skib("324234")

-- b.__index()
-- print("----------------------------------")
--  b.__index(Class,4,6)
--print(c)
-- print(c.__index())
--print(b.__index())
--print(b:skib())