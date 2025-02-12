def redirectionUrl(language)
    base_url = "www.example.org/"
    if language == "English"
        "#{base_url}en"
    elsif language == "Japanese"
        "#{base_url}ja"
    elsif language == "Spanish"
        "#{base_url}es"
    elsif language == "Russian"
        "#{base_url}ru"
    else
        "#{base_url}"
    end
end

redirectionUrl("English")
redirectionUrl("Japanese")
redirectionUrl("Spanish")
redirectionUrl("Russian")
redirectionUrl("German")