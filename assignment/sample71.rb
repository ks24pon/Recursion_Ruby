def monsterAttackExpressionNest(monster)
    attack = 1000
    message = "'s attack is:"

    return monster == "Cyclops" ? "Cyclops" + message + (attack*1.8).to_s : monster == "Ogre" ? "Ogre" + message + (attack*2.5).to_s : monster == "Zombie" ? "Zombie" + message + (attack*1.2).to_s : "Monster does not exist."
end


puts monsterAttackExpressionNest("Cyclops")
puts monsterAttackExpressionNest("Ogre")
puts monsterAttackExpressionNest("Zombie")
puts monsterAttackExpressionNest("Ghost")