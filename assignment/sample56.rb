def product(x, y)
    return 0 if y == 0
    return x + product(x, y -1)
end

