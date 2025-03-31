def factorial(n)
    if n <= 0
        return 1
    end
    return factorial(n-1) * n
end