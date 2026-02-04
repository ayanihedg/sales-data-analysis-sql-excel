use exo ;
 go
 
 
 CREATE TABLE SALESs(
id int,
client varchar(40),
city varchar(40),
product varchar(40),
quantity int,
unit_price int,
sale_date date ,
payment varchar(20)
);
 INSERT INTO  SALESs(id, client, city, product, quantity, unit_price, sale_date, payment)
VALUES
(1, 'Ahmed Benali', 'Alger', 'PC Portable', 1, 85000, '2024-01-12', 'Cash'),
(2, 'Sara Khelifi', 'Oran', 'Smartphone', 2, 42000, '2024-01-13', 'Carte'),
(3, 'Yacine Toumi', 'Alger', 'Imprimante', 1, 32000, '2024-01-15', 'Cash'),
(4, 'Lina Boudiaf', 'Constantine', 'PC Portable', 1, 87000, '2024-01-16', 'Carte'),
(5, 'Mourad Saidi', 'Oran', 'Tablette', 3, 28000, '2024-01-18', 'Cash'),
(6, 'Nadia Ferhat', 'Alger', 'Smartphone', 1, 45000, '2024-01-20', 'Carte'),
(7, 'Karim Ouali', 'Blida', 'PC Portable', 2, 83000, '2024-01-22', 'Virement'),
(8, 'Salima Ait', 'Alger', 'Tablette', 2, 30000, '2024-01-23', 'Cash'),
(9, 'Amine Dahmani', 'Oran', 'Imprimante', 1, 34000, '2024-01-25', 'Carte'),
(10, 'Hanane Bensaid', 'Constantine', 'Smartphone', 2, 41000, '2024-01-26', 'Cash'),
(11, 'Sofiane Rahmani', 'Alger', 'PC Portable', 1, 88000, '2024-01-27', 'Virement'),
(12, 'Rania Ziani', 'Blida', 'Tablette', 1, 29000, '2024-01-28', 'Carte');
ALTER TABLE SALESs
ALTER COLUMN payment varchar(20)
select *  FROM SALESs
/*::::::::::::::::::*/
alter table SALESs
/*select quantity*unit_price as montant*/
add montant as (quantity*unit_price )
select * from SALESs
/*::::::::::::::::::*/
select sum(montant) as sumomantant
from SALESs
/*****************/
select city ,
 sum(montant) as sumomantant
from SALESs
group by city
order by sumomantant desc;
/*******************/
select  payment,city,
  count(payment) as nembredemande
from SALESs
group by payment,city
order by payment asc;