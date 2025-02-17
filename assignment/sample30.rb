def canProcessOrder(beef,chicken,salad,coffee,tea)
    if beef ^ chicken && coffee ^ tea
        true
    else
        false
    end
end

