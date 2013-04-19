module Energy where

import Pokemon

damageSize :: Type -> Type -> Int
damageSize Normal Ghost = 0
damageSize Ghost Normal = 0
damageSize Ground Fly = 0
damageSize Thunder Ground = 0
damageSize Psi Evil = 0
damageSize Fight Ghost = 0
damageSize Poison Steel = 0
damageSize Fire Leaf = 2
damageSize Fire Ice = 2
damageSize Fire Insect = 2
damageSize Fire Steel = 2
damageSize Water Fire = 2
damageSize Water Ground = 2
damageSize Water Ground = 2
damageSize Thunder Water = 2
damageSize Thunder Fly = 2
damageSize Leaf Water = 2
damageSize Leaf Ground = 2
damageSize Leaf Stone = 2
damageSize Ice Leaf = 2
damageSize Ice Ground = 2
damageSize Ice Fly = 2
damageSize Ice Dragon = 2
damageSize Fight Normal = 2
damageSize Fight Ice = 2
damageSize Fight Stone = 2
damageSize Fight Evil = 2
damageSize Fight Steel = 2
damageSize Poison Leaf = 2
damageSize Ground Fire = 2
damageSize Ground Thunder = 2
damageSize Ground Poison = 2
damageSize Ground Stone = 2
damageSize Ground Steel = 2
damageSize Fly Leaf = 2
damageSize Fly Fight = 2
damageSize Fly Insect = 2
damageSize Psi Fight = 2
damageSize Psi Poison = 2
damageSize Insect Leaf = 2
damageSize Insect Psi = 2
damageSize Stone fire = 2
damageSize Stone Ice = 2
damageSize Stone Fly = 2
damageSize Stone Insect = 2
damageSize Ghost Psi = 2
damageSize Ghost Ghost = 2
damageSize Dragon Dragon = 2
damageSize Evil Psi = 2
damageSize Evil Ghost = 2
damageSize Steel Ice = 2
damageSize Steel Stone = 2
damageSize _ _ = 1
