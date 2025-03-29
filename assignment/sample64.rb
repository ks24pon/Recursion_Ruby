def monsterAttack(monster)
    attack = 1000
    message = "'s attack is:"

    if monster == "Cyclops"
        attack *= 1.8
        message = "Cyclops" + message + attack。to_s
    elsif monster == "Ogre"
        attack *= 2.5
        message = "Ogre" + message + attack.to_s
    elsif monster == "Zombie"
        attack *= 1.2
        message = "Zombie" + message + attack.to_s
    else
        message = "Monster does not exist."
    end

    return message
end

puts monsterAttack("Ogre")
puts monsterAttack("Ghost")