def squareSummation(n)
    if n <= 0
        return 0
    end
    squareSummation(n - 1) + n**2
end
