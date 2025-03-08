def mergeString(s1,s2)
    return "" if s1.empty? || s2.empty?
    s1[0] + s2[0] + mergeString(s1[1..], s2[1..])
end

