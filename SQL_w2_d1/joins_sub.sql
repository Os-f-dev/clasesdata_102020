/*SELECT * FROM product;*/

/*SELECT MAX(price)  AS 'Precio Maximo',
 MIN(price)  'Precio Min',
 SUM(price)  'Suma',
 AVG(price)  AS 'Promedio',
 COUNT(price) AS 'count(price)',
 COUNT(*) 'count(*)'
FROM product;*/

/*SELECT p_code, p_name,
CASE price
 WHEN 10
 THEN 'Barato'
 WHEN 15
 THEN 'Precio Medio'
 WHEN 25
 THEN 'Caro'
 ELSE 'otro'
END AS price_cat
FROM product;*/

/*CREATE TABLE  nueva_tabla as(
SELECT p_code, p_name,
CASE
	WHEN (price <= 10
    AND p_name NOT LIKE 'Nut%')
    THEN 'Barato'
    WHEN (price BETWEEN 11 and 15)
    THEN 'Precio Medio'
    WHEN (price > 25 and launch_dt > '2013-03-29')
    THEN 'Caro'
    WHEN price IS NULL
    THEN 'No valido'
    ELSE 'Otro'
END AS product_cat,launch_dt
FROM product);*/

/*SELECT * FROM nueva_tabla;*/

/*mysql -u root -p --local-infile=1 test ##para escritura y lectura de archivos
SHOW VARIABLES LIKE "secure_file_priv"; #direccion donde estan los archivos
SELECT * INTO outfile 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/nueva_tabla.csv' FIELDS terminated by ',' LINES terminated by '\n' FROM nueva_tabla;
*/

/*SELECT 'columna1','columna2','columna3','columna4'
UNION ALL
SELECT * INTO outfile 'nueva_tabla.csv'
FIELDS terminated by ','
LINES terminated by '\n'
FROM nueva_tabla;*/

/*SELECT launch_dt,
MIN(price)  'Precio Min',
 SUM(price)  'Suma',
 AVG(price)  AS 'Promedio',
 COUNT(price) AS 'count(price)',
 COUNT(*) 'count(*)'
 FROM product
GROUP BY price,launch_dt
having count(price) > 1
ORDER BY price, launch_dt;*/

/*SELECT launch_dt,
MIN(price)  'Precio Min',
 SUM(price)  'Suma',
 AVG(price)  AS 'Promedio',
 COUNT(price) AS 'count(price)',
 COUNT(*) 'count(*)'
 FROM product
 WHERE p_name NOT LIKE 'Super%'
 GROUP BY launch_dt
 HAVING launch_dt > '2013-03-28'
 ORDER BY launch_dt;*/


/*SELECT launch_dt,
MIN(price)  'Precio Min',
 SUM(price)  'Suma',
 AVG(price)  AS 'Promedio',
 COUNT(price) AS 'count(price)',
 COUNT(*) 'count(*)'
 FROM product
 where launch_dt > '2013-03-28'
 GROUP BY launch_dt
 ORDER BY launch_dt;*/
 
 /*select c.c_no, c_name, p_code, o.qty, o.order_dt
 FROM c_order AS o
 JOIN customer AS c
 ON o.c_no = c.c_no;*/
 
 #alias
 /*SELECT c_name, p_name, o.qty, o.order_dt, p.p_code
 FROM c_order AS o
 JOIN customer AS c
 on o.c_no = c.c_no
 JOIN product AS p
 ON o.p_code = p.p_code;*/
 
 
/* SELECT c_name, p_name, c_order.qty, c_order.order_dt, product.p_code
 FROM c_order 
 JOIN customer 
 on c_order.c_no = customer.c_no
 JOIN product 
 ON c_order.p_code = product.p_code;*/
 
 
/*SELECT c_name, p_name, o.qty, o.order_dt
 FROM c_order as o
 JOIN customer as c
 ON o.c_no = c.c_no
 JOIN product as p
 ON o.p_code = p.p_code
 where p_name NOT LIKE 'Super%';*/
 
 /*SELECT o.c_no, o.p_code, o.order_dt, ship_qty, ship_dt, qty
 FROM shipment as s
 JOIN c_order AS o
 ON s.c_no = o.c_no
 AND s.p_code = o.p_code
 AND s.order_dt = o.order_dt;*/
 
/*SELECT o.c_no, o.p_code, o.order_dt, ship_qty, ship_dt, qty, qty-ship_qty as diff
 FROM shipment as s
 JOIN c_order AS o
 ON s.c_no = o.c_no
 AND s.p_code = o.p_code
 AND s.order_dt = o.order_dt;*/
 
 /*SELECT o.*, ship_dt
 FROM c_order AS o
 LEFT JOIN  shipment  as s
 ON o.p_code = s.p_code
 AND o.c_no = s.c_no;
 
 select * from shipment;
 select * from c_order;*/
 
 /*SELECT prod.p_code, prod.p_name, subst.p_code AS subst_p_code,
 subst.p_name AS subst_name
 FROM product AS prod
 RIGHT JOIN product AS subst
 on prod.p_code = subst.p_code
 ORDER BY prod.p_code;*/
 
/*SELECT * FROM c_order NATURAL JOIN customer;

select * from c_order;
select * from customer;*/

/*SELECT * FROM product
WHERE price = (SELECT MAX(price)
FROM product as p
INNER JOIN c_order as o
ON p.p_code = o.p_code
)*/

/*SELECT * FROM product
WHERE price IN (SELECT MAX(price)
FROM product as p
INNER JOIN c_order as o
ON p.p_code = o.p_code
group by p.launch_dt);*/

SELECT customer.* FROM customer
WHERE c_no in (
	SELECT c_no
    FROM c_order
    WHERE p_code IN (
		SELECT p_code 
        FROM product
        WHERE p_name NOT LIKE 'Nut%'));