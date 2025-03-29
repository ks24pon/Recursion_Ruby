def screenViewMode(height,width)
    if height >= width
        "portrait"
    else
        "landscape"
    end
end

puts screenViewMode(200, 150)
puts screenViewMode(120, 100)
puts screenViewMode(50, 100)
puts screenViewMode(60, 60)