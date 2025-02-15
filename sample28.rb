def getBootstrapClass(screenWidth)
    return "xs" if screenWidth <= 768
    return "sm" if screenWidth <= 992
    return "md" if screenWidth <= 1200
    return "lg" if screenWidth >= 1200

end

puts getBootstrapClass(340)
puts getBootstrapClass(800)
puts getBootstrapClass(1000)
puts getBootstrapClass(1350)
