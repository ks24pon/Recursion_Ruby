def isThereSchool(day,isHoliday)
    if !(isHoliday || day == "Saturday" || day == "Sunday")
        true
    else
        false
    end
end