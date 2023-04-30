function checkFuel()
    if turtle.getFuelLevel() < 20 then -- adjust the fuel level as needed
      print("Low on fuel. Refueling...")
      for i = 1, 16 do
        turtle.select(i)
        if turtle.refuel(0) then
          print("Refueled with", turtle.getItemCount(i), "fuel items.")
          break
        end
      end
    end
  end
  
  while true do
    checkFuel() -- call checkFuel function at beginning of loop
    for i = 1, 3 do
      turtle.dig()
      turtle.forward()
      turtle.digUp()
      turtle.digDown()
      turtle.turnRight()
      turtle.dig()
      turtle.forward()
      turtle.turnLeft()
      turtle.digUp()
      turtle.digDown()
      turtle.turnLeft()
      turtle.forward()
      turtle.dig()
      turtle.forward()
      turtle.forward()
      turtle.turnRight()
      turtle.digUp()
      turtle.digDown()
      turtle.turnRight()
      turtle.forward()
      turtle.turnLeft()
    end
  end
  
