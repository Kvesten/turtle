require("./lib/turtle")

local function rectFarmAsm(x, y) -- снос прямоугольной фермы x*y
    local function harvest()     -- собирает и ставит урожай
        if lib.plantGrownDown() then
            turtle.digDown()
            turtle.placeDown()
        end
        turtle.forward()
    end

    for i = 1, y do
        for j = 1, x do
            harvest()
        end
        turtle.turnLeft()
        turtle.forward()
        turtle.turnLeft()
    end

    if y % 2 then
        Lib.turnBack()
        for i = 1, x do
            turtle.forward()
        end
    end

    turtle.turnLeft()

    for i = 1, y do
        turtle.forward()
    end

    turtle.turnLeft()
end
