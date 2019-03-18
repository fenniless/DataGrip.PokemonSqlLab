
#Part3
#What is each pokemon's primary type?
SELECT p.name, t.name
FROM Pokemon.pokemons p
       JOIN Pokemon.types t
            ON p.primary_type = t.id;
#AWESOME

#What is Rufflet's secondary type?
SELECT p.name, t.name
FROM Pokemon.pokemons p
       JOIN Pokemon.types t
            ON p.secondary_type = t.id
WHERE p.name = "Rufflet";

#What are the names of the pokemon that belong to the trainer with trainerID 303?
SELECT p.name
FROM pokemons p
       JOIN pokemon_trainer pt
            ON p.id = pt.pokemon_id
WHERE pt.trainerID = 303;

#How many pokemon have a secondary type Poison
SELECT COUNT(*) as "number of poke with Poison type"
FROM pokemons p
       JOIN types t
            ON p.secondary_type = t.id
WHERE t.id = 7;

#What are all the primary types and how many pokemon have that type?
SELECT t.name as "type", COUNT(p.name) as "number of Poke"
FROM types t
       JOIN pokemons p
            ON p.primary_type = t.id
GROUP BY p.primary_type;

#How many pokemon at level 100 does each trainer with at least one level 100 pokemon have? (Hint: your query should not display a trainer
SELECT COUNT(pt.pokelevel)
FROM pokemon_trainer pt
WHERE pt.pokelevel = 100
GROUP BY pt.trainerID;
#no trainer, just counts

#How many pokemon only belong to one trainer and no other?
SELECT sum(unique_trainers) as "number of uniqely owned poke"
FROM (
       SELECT count(trainerID) as unique_trainers, pokemon_id
       FROM pokemon_trainer p
       GROUP BY p.pokemon_id
       HAVING count(*) = 1) as u;
