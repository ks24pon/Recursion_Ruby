def isVowel?(letter)
    %w[a i u e o].include?(letter)
end

puts isVowel?("a")
puts isVowel?("e")
puts isVowel?("z")
puts isVowel?("k")