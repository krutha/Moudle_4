--Artist Table
--prblm 1
select * from artist
insert into artist (name )
values ('spb') ,('AR Rahman') ,('arijit singh');
--prblm 2
SELECT * FROM artist 
ORDER BY name ASC ;


--employee
--prblm1
select * from employee
 select first_name,last_name
from employee where city = 'Calgary'
--prblm 2
select employee_id from employee where first_name = 'Nancy';
select * from employee where reports_to = 2;
--prblm 3
select count (city)  from employee
WHERE city = 'Lethbridge';


--invoice
--prblm1
select * from invoice;
 select count(billing_country) from invoice where billing_country = 'USA'
--prblm2
 select max(total) from invoice ;
--prblm3
select min(total) from invoice ;
--prblm4
select * from invoice where total > 5 ;
--prblm5
select * from invoice where total < 5 ;
--prblm6
 select sum (total) from invoice;


--JOIN Queries
--prblm1
SELECT *FROM invoice 
JOIN invoice_line  ON invoice_line.invoice_id = invoice.invoice_id
WHERE invoice_line.unit_price > 0.99;
--prblm2
SELECT invoice.invoice_date, customer.first_name, customer.last_name, invoice.total
FROM invoice 
JOIN customer  ON invoice.customer_id = customer.customer_id;
--prblm3
SELECT customer.first_name, customer.last_name, employee.first_name, employee.last_name
FROM customer 
JOIN employee ON customer.support_rep_id = employee.employee_id;
--prblm 4
SELECT album.title,artist.name
FROM album JOIN artist ON album.artist_id =  artist.artist_id;







