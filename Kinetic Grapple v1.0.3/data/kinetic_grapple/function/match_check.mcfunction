#Run by Hook Items each tick to check for Bobber with matching UUID

function kinetic_grapple:uuid_store_score
execute as @e[type=fishing_bobber] if score @s kinetic_grapple.UUID0 = .Stored kinetic_grapple.UUID0 if score @s kinetic_grapple.UUID1 = .Stored kinetic_grapple.UUID1 if score @s kinetic_grapple.UUID2 = .Stored kinetic_grapple.UUID2 if score @s kinetic_grapple.UUID3 = .Stored kinetic_grapple.UUID3 run tag @s add kinetic_grapple.this

execute unless entity @e[type=fishing_bobber,tag=kinetic_grapple.this] run kill @s
tag @e remove kinetic_grapple.this