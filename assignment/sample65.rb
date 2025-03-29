def monsterAttackSwitchMenu(monster)
    attack = 1000
    message = "'s attack is:"

    #モンスターの名前を受け取って、ケースで比較
    case monster
    when "Cyclops"
        attack *= 1.8
        message = "Cyclops" + message + attack.to_s
    when "Ogre"
        attack *= 2.5
        message = "Ogre" + message + attack.to_s
    when "Zombie"
        attack *= 1.2
        message = "Zombie" + message + attack.to_s
    else
    message = "Monster does not exist."
    end
end

puts monsterAttackSwitchMenu("Cyclops")
puts monsterAttackSwitchMenu("Ogre")
puts monsterAttackSwitchMenu("Zombie")
puts monsterAttackSwitchMenu("Ghost")