def redirectionUrl(lang)
    # デフォルト
    base_url = "www.example.org/"
    # case文
    case lang
    when "Japanese"
        "#{base_url}ja"
    when "English"
        "#{base_url}en"
    when "Spanish"
        "#{base_url}es"
    when "Russian"
        "#{base_url}ru"
    else
        base_url
    end
end

puts redirectionUrl("English")
puts redirectionUrl("Japanese")
puts redirectionUrl("Spanish")
puts redirectionUrl("Russian")
puts redirectionUrl("German")