def recursiveAddition(m,n)
    if n <= 0
        return m
    end

    return recursiveAddition(m + 1, m - 1) + 1
end