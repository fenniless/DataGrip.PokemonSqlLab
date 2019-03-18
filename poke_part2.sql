#Part2
#What are all the types of pokemon that a pokemon can have?
SELECT name
FROM Pokemon.types;

#What is the name of the pokemon with id 45?
SELECT name
FROM Pokemon.pokemons
WHERE id = 45;

#How many pokemon are there?
SELECT COUNT(id) as "number of Poke"
FROM Pokemon.pokemons;

#How many types are there?
SELECT COUNT(id) as "nuber of types"
FROM Pokemon.types;

#How many pokemon have a secondary type?
SELECT COUNT(secondary_type) as "number Poke with secondary type"
FROM Pokemon.pokemons;




