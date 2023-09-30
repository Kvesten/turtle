require ("./lib/turtle")

local function digMetroOne()
    lib.dig3(1)
    turtle.turnLeft()
    lib.dig3(2)
    lib.moveDown(2)
    lib.dig3(2)
    lib.turnBack()
    lib.dig3(6)
    lib.moveDown(1)
    lib.turnBack()
    lib.move(3)
    turtle.digDown()
    lib.turnBack()
    lib.moveUp(3)
    lib.move(1)
    turtle.turnLeft()
end

local function digMetro(value)
    for i = 1, value do
        lib.digMetroOne()
    end
end

digMetro(100)