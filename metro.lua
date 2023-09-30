require("./Lib/turtle")

local function digMetroOne()
    Lib.dig3(1)
    turtle.turnLeft()
    Lib.dig3(2)
    Lib.moveDown(2)
    Lib.dig3(2)
    Lib.turnBack()
    Lib.dig3(6)
    Lib.moveDown(1)
    Lib.turnBack()
    Lib.move(3)
    turtle.digDown()
    Lib.turnBack()
    Lib.moveUp(3)
    Lib.move(1)
    turtle.turnLeft()
end

local function digMetro(value)
    for i = 1, value do
        Lib.digMetroOne()
    end
end

digMetro(100)
