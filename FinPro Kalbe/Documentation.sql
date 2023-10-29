--Query1
select * from customer where "Marital_Status" is null; 

delete from customer where "Marital_Status" is null;

select "Marital_Status", AVG("Age") as average_age
from customer
group by "Marital_Status"; 

--Query2
--Ubah value Gender
UPDATE customer 
SET "Gender"  = 'Wanita'
WHERE "Gender"  = '0';

UPDATE customer 
SET "Gender"  = 'Pria'
WHERE "Gender"  = '1';

select "Gender", AVG("Age") as average_age
from customer
group by "Gender";

--Query3
SELECT s.store_name, SUM(t.qty) AS total_quantity
FROM transaction t
LEFT JOIN store s ON t."storeID" = s."storeID" 
GROUP BY s.store_name 
ORDER BY total_quantity DESC
LIMIT 1;

--Query4
SELECT p.product_name, SUM(t.total_amount) AS total
FROM transaction t
LEFT JOIN product p ON t."productID" = p."productID"
GROUP BY p.product_name
ORDER BY total DESC
LIMIT 1;

