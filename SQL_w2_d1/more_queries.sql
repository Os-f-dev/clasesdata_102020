/*use test;
SELECT pet.name, TIMESTAMPDIFF(YEAR,birth,date) AS age,
remark FROM pet INNER JOIN event
ON pet.name = event.name
WHERE event.type = 'kennel';*/

/*SELECT pet.name, TIMESTAMPDIFF(YEAR,birth,date) AS age,
remark FROM pet INNER JOIN event
ON pet.name = event.name
WHERE event.type = 'litter';*/

/*SELECT pet.name, TIMESTAMPDIFF(YEAR,birth,date) AS age,
remark FROM pet INNER JOIN event
ON pet.name = event.name*/

/*SELECT p1.name , p1.sex, p2.name, p2.sex, p1.species
FROM pet AS p1 INNER JOIN pet as p2
ON p1.species = p2.species
AND p1.sex = 'f' AND p1.death IS NULL
AND p2.sex = 'm' AND p2.death IS NULL;*/

/*SELECT p1.name , p1.sex, p2.name, p2.sex, p1.species
FROM pet AS p1 INNER JOIN pet as p2
ON p1.species = p2.species
WHERE (p1.sex = 'f' AND p1.death IS NULL)
AND (p2.sex = 'm' AND p2.death IS NULL);*/

