require ("./lib/turtle")

local a = true

for i = 1, 3 do
    if lib.plantGrownDown() then
        turtle.digDown()
    end
    for j = 1, 8 do
        turtle.forward()
        if lib.plantGrownDown() then
            turtle.digDown()
        end
    end

    if a then 
        turtle.turnLeft()
    else
        turtle.turnRight()
    end

    turtle.forward()

    if a then 
        turtle.turnLeft()
    else
        turtle.turnRight()
    end

    a = not a
end

