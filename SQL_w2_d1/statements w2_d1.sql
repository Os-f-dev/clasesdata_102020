/* USE test;
SELECT * FROM shop; */

/*use test;
select * FROM shop
WHERE price between 5  and 15;*/

/*select * FROM pet
WHERE birth between '1995-01-01' and '2000-01-01';*/

/*SELECT * FROM pet WHERE  species IN ('bird','cat') OR species IN ('dog');*/

/*SELECT * FROM pet WHERE  species IN ('bird','cat') AND sex IN ('f');*/

/*SELECT * FROM pet WHERE NOT(species = 'dog');*/

/*SELECT * FROM pet WHERE (species = 'dog' OR sex = 'm')*/ 

/*SELECT * FROM pet WHERE NOT(species = 'dog' OR sex = 'm');*/

/*SELECT * FROM pet WHERE (species = 'dog' AND NOT sex = 'm');*/

/*SELECT * FROM pet where (birth not between '1990-01-01' and '2000-01-01');*/

/*SELECT * FROM pet LIMIT  3;*/

/*SELECT * FROM pet WHERE name LIKE 'b%';*/

/*SELECT * FROM pet WHERE name LIKE '%fy';*/

/*SELECT * FROM pet WHERE name LIKE 'Fluffy';*/

/*SELECT * FROM pet WHERE name LIKE '____'*/

/*SELECT * FROM pet WHERE REGEXP_LIKE(name, '^b');*/

/*SELECT * FROM pet WHERE REGEXP_LIKE(name, 'y$');*/

/*SELECT * FROM pet WHERE REGEXP_LIKE(name, '^.{5}$');*/

/*SELECT COUNT(*) FROM pet;*/

/*SELECT owner,count(*) FROM pet group by owner;*/

/*SELECT species,count(*) as conteo 
FROM pet group by species order by conteo DESC;*/

/*SELECT sex, COUNT(*) FROM pet WHERE sex is not null GROUP BY sex;*/

/*SELECT species, sex, COUNT(*) FROM pet WHERE sex is not NULL group by species, sex;*/

/*SELECT species, sex, COUNT(*) FROM pet
WHERE species = 'dog' OR species = 'cat'
GROUP BY species, sex;*/