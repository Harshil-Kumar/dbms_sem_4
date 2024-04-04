create database dbms;
use dbms;

create table clients(
row_no int primary key, 
name varchar(30) not null, 
contact bigint not null, 
email varchar(70) not null, 
address varchar(30) not null, 
role varchar(10) not null);

select * from clients;

create table raw_materials(
row_no int primary key, 
name varchar(30) not null, 
contact bigint not null, 
email varchar(30) not null, 
address varchar(30) not null, 
role varchar(10) not null);

select * from raw_materials;

insert into clients values(1, 'harshil', 6305540373, 'hello@gmail.com', 'chennai', 'present');
delete from clients where row_no=1;

insert into clients values(2, 'krishna', 7013133895, 'hi@gmail.com', 'vaikuntam', 'present');
update clients set address = 'chennai' where row_no=1;
insert into clients values(3, 'ram', 9491947131, '3@gmail.com', 'vaikuntam2', 'previous');

create table clients_multi_email(
row_no_multi_email int primary key, 
row_no int not null, 
email varchar(70) not null, 
foreign key (row_no) references clients(row_no));

create table clients_multi_contact(
row_no_multi_phone int primary key, 
row_no int not null, 
contact varchar(70) not null, 
foreign key (row_no) references clients(row_no));

insert into clients_multi_contact values(1,2, 88930029883);

select * from clients_multi_contact;

insert into clients_multi_email values(1, 3, 'tt');
insert into clients_multi_email values(2, 4, 'uu, yy');

# update clients_multi_email set email = 'h2@gmail.com' where row_no=1; 
# update clients_multi_email set email = 'h3@gmail.com, h4@gmail.com' where row_no=2; 

create table raw_materials_multi_email(
row_no_multi_phone int primary key, 
row_no int not null, 
email varchar(70) not null, 
foreign key (row_no) references raw_materials(row_no));

insert into raw_materials_multi_email values(1, 4, 'h5@gmail.com');
insert into raw_materials_multi_email values(2, 8, 'h9@gmail.com');

select * from raw_materials_multi_email;

alter table raw_materials_multi_email rename column row_no_multi_phone to row_no_multi_email;

create table raw_materials_multi_contact(
row_no_multi_phone int primary key, 
row_no int not null, 
contact varchar(70) not null, 
foreign key (row_no) references raw_materials(row_no));

insert into raw_materials_multi_contact values(1, 9, '29930482993');

select * from raw_materials_multi_contact;

CREATE TABLE company (
    branch_name VARCHAR(30) PRIMARY KEY,
    contact BIGINT NOT NULL,
    email VARCHAR(70) NOT NULL,
    address VARCHAR(30) NOT NULL
);

INSERT INTO clients VALUES
(4, 'Emily Brown', 9998887777, 'emily.b@example.com', '101 Maple St', 'present'),
(5, 'Chris Lee', 1112223333, 'chris.lee@example.com', '246 Pine St', 'present'),
(6, 'Jessica Wang', 7776665555, 'jessica.w@example.com', '369 Cedar St', 'previous'),
(7, 'David Kim', 4445556666, 'david.k@example.com', '852 Birch St', 'present'),
(8, 'Sarah Garcia', 2223334444, 'sarah.g@example.com', '975 Spruce St', 'previous'),
(9, 'Matthew Martinez', 6667778888, 'matthew.m@example.com', '753 Walnut St', 'previous'),
(10, 'Amanda Nguyen', 8889990000, 'amanda.n@example.com', '159 Sycamore St', 'present'),
(11, 'Brian Thompson', 3332221111, 'brian.t@example.com', '357 Cherry St', 'previous'),
(12, 'Lauren Harris', 6661112222, 'lauren.h@example.com', '258 Apple St', 'previous'),
(13, 'Kevin Clark', 9991112222, 'kevin.c@example.com', '654 Peach St', 'present'),
(14, 'Rachel Rodriguez', 4447778888, 'rachel.r@example.com', '852 Mango St', 'present'),
(15, 'Andrew Walker', 2224446666, 'andrew.w@example.com', '753 Grape St', 'previous'),
(16, 'Michelle Lewis', 8884442222, 'michelle.l@example.com', '951 Banana St', 'previous'),
(17, 'James Allen', 5558889999, 'james.a@example.com', '246 Kiwi St', 'present'),
(18, 'Stephanie King', 1115559999, 'stephanie.k@example.com', '369 Orange St', 'present'),
(19, 'Daniel Wright', 7773331111, 'daniel.w@example.com', '468 Lemon St', 'previous'),
(20, 'Christina Scott', 3337771111, 'christina.s@example.com', '579 Grapefruit St', 'present');


insert into raw_materials values
(1, 'Emily Brown', 9998887777, 'emily.b@example.com', '101 Maple St', 'present'),
(2, 'Sophia Martinez', 1234567890, 'sophia.m@example.com', '456 Elm St', 'previous'),
(3, 'Ethan Thompson', 7778889999, 'ethan.t@example.com', '357 Cherry St', 'present'),
(4, 'Olivia Wilson', 3334445555, 'olivia.w@example.com', '951 Banana St', 'present'),
(5, 'Noah Davis', 9991112222, 'noah.d@example.com', '246 Pine St', 'previous'),
(6, 'Isabella Rodriguez', 8887776666, 'isabella.r@example.com', '654 Peach St', 'previous'),
(7, 'Liam Garcia', 2223334444, 'liam.g@example.com', '369 Cedar St', 'present'),
(8, 'Ava Lee', 4445556666, 'ava.l@example.com', '852 Birch St', 'previous'),
(9, 'Mia Taylor', 6665554444, 'mia.t@example.com', '753 Walnut St', 'previous'),
(10, 'James Brown', 7778889999, 'james.b@example.com', '159 Sycamore St', 'present'),
(11, 'Emma Hernandez', 5554443333, 'emma.h@example.com', '975 Spruce St', 'previous'),
(12, 'William White', 8889990000, 'william.w@example.com', '258 Apple St', 'previous'),
(13, 'Amelia Hall', 6663331111, 'amelia.h@example.com', '852 Mango St', 'present'),
(14, 'Evelyn King', 1112223333, 'evelyn.k@example.com', '753 Grape St', 'previous'),
(15, 'Alexander Adams', 4443332222, 'alexander.a@example.com', '468 Lemon St', 'previous'),
(16, 'Charlotte Turner', 7772221111, 'charlotte.t@example.com', '579 Grapefruit St', 'previous'),
(17, 'Benjamin Scott', 3338887777, 'benjamin.s@example.com', '369 Orange St', 'previous'),
(18, 'Harper Baker', 2225558888, 'harper.b@example.com', '246 Kiwi St', 'present'),
(19, 'Michael Lewis', 1117778888, 'michael.l@example.com', '123 Main St', 'previous'),
(20, 'Ella Carter', 7779991111, 'ella.c@example.com', '101 Maple St', 'present');

select * from raw_materials;

create table company(row_no int primary key, branch_name varchar(30) not null, contact bigint not null, email varchar(70) not null, address varchar(30) not null);
insert into company values 
(1, 'tirupati', 7890284775, 'govinda@gmail.com', 'tpt'),
(2, 'chennai', 8829030384, 'hi@gmail.com', 'chen');

ALTER TABLE company RENAME TO company_temp;

INSERT INTO company (branch_name, contact, email, address)
SELECT branch_name, contact, email, address FROM company_temp;
DROP TABLE company_temp;

select * from company;

ALTER TABLE clients ADD branch varchar(30);

select * from clients;

update clients set branch = 'tirupati' where row_no=1;
update clients set branch = 'chennai' where row_no=2;
update clients set branch = 'tirupati' where row_no=3;
update clients set branch = 'chennai' where row_no=4;
update clients set branch = 'chennai' where row_no=5;
update clients set branch = 'tirupati' where row_no=6;
update clients set branch = 'tirupati' where row_no=7;
update clients set branch = 'chennai' where row_no=8;
update clients set branch = 'tirupati' where row_no=9;
update clients set branch = 'chennai' where row_no=10;
update clients set branch = 'tirupati' where row_no=11;
update clients set branch = 'tirupati' where row_no=12;
update clients set branch = 'chennai' where row_no=13;
update clients set branch = 'tirupati' where row_no=14;
update clients set branch = 'chennai' where row_no=15;
update clients set branch = 'tirupati' where row_no=16;
update clients set branch = 'chennai' where row_no=17;
update clients set branch = 'tirupati' where row_no=18;
update clients set branch = 'chennai' where row_no=19;
update clients set branch = 'tirupati' where row_no=20;


ALTER table clients add foreign key (branch) references company(branch_name);


ALTER TABLE raw_materials ADD branch varchar(30);

update raw_materials set branch = 'tirupati' where row_no=1;
update raw_materials set branch = 'chennai' where row_no=2;
update raw_materials set branch = 'tirupati' where row_no=3;
update raw_materials set branch = 'chennai' where row_no=4;
update raw_materials set branch = 'chennai' where row_no=5;
update raw_materials set branch = 'tirupati' where row_no=6;
update raw_materials set branch = 'tirupati' where row_no=7;
update raw_materials set branch = 'chennai' where row_no=8;
update raw_materials set branch = 'tirupati' where row_no=9;
update raw_materials set branch = 'chennai' where row_no=10;
update raw_materials set branch = 'tirupati' where row_no=11;
update raw_materials set branch = 'tirupati' where row_no=12;
update raw_materials set branch = 'chennai' where row_no=13;
update raw_materials set branch = 'tirupati' where row_no=14;
update raw_materials set branch = 'chennai' where row_no=15;
update raw_materials set branch = 'tirupati' where row_no=16;
update raw_materials set branch = 'chennai' where row_no=17;
update raw_materials set branch = 'tirupati' where row_no=18;
update raw_materials set branch = 'chennai' where row_no=19;
update raw_materials set branch = 'tirupati' where row_no=20;

ALTER table raw_materials add foreign key (branch) references company(branch_name);

select * from raw_materials;


# 1. What is the total count of clients in the database?
SELECT COUNT(*) AS total_clients FROM clients;

# 2. List the clients whose names start with 'r' and belong to the branch 'tirupati'.
SELECT * FROM clients WHERE name LIKE 'r%' AND branch = 'tirupati';

# 3. How many clients have multiple email addresses associated with them?
SELECT COUNT(*) AS multi_email_clients FROM clients_multi_email;

# 4. Retrieve the names and roles of clients along with their associated branch information.
SELECT c.name, c.role, co.branch_name
FROM clients c
JOIN company co ON c.branch = co.branch_name;

# 5. What is the average contact number of clients in the database?
SELECT AVG(contact) FROM clients;

# 6. List the raw materials whose names contain 'a' and belong to the branch 'chennai'.
SELECT * FROM raw_materials WHERE name LIKE '%a%' AND branch = 'chennai';

# 7. How many raw materials have email addresses ending with '.com'?
SELECT COUNT(*) FROM raw_materials WHERE email LIKE '%.com';

# 8. Retrieve the names and addresses of raw materials along with their associated branch information.
SELECT r.name, r.address, co.branch_name
FROM raw_materials r
JOIN company co ON r.branch = co.branch_name;

# 9. What is the maximum contact number of raw materials in the database?=
SELECT MAX(contact) FROM raw_materials;

# 10. List the raw materials whose names end with 'son' and have roles as 'present'.
SELECT * FROM raw_materials WHERE name LIKE '%brown' AND role = 'present';

# 11. How many branches are there in the company?
SELECT COUNT(*) FROM company;

# 12. Retrieve the branch names along with their contact numbers and email addresses.
SELECT branch_name, contact, email FROM company;

# 13. What is the branch name with the highest contact number?
SELECT branch_name FROM company ORDER BY contact DESC LIMIT 1;

# 14. List the branches whose email addresses contain 'hello@gmail.com'.
SELECT * FROM clients WHERE email LIKE '%hi@gmail.com%';

select * from clients;

# 15. How many branches have a contact number greater than 8000000000?

SELECT COUNT(*) FROM clients WHERE contact > 8000000000;

# 16. Retrieve the names of clients along with the names of raw materials they have in common.
SELECT c.name AS client_name, r.name AS raw_material_name
FROM clients c, raw_materials r
WHERE c.name = r.name;

# 17. How many clients have the same address as the raw materials they are associated with?
SELECT COUNT(*) AS same_address_clients
FROM clients c
JOIN raw_materials r ON c.address = r.address;

# 18. List the clients and raw materials along with their associated branch information where the contact number is odd.
SELECT c.name AS client_name, c.contact AS client_contact, r.name AS raw_material_name, r.contact AS raw_material_contact, co.branch_name
FROM clients c
JOIN raw_materials r ON c.name = r.name
JOIN company co ON c.branch = co.branch_name
WHERE c.contact % 2 <> 0 AND r.contact % 2 <> 0;

# 19. Retrieve the names of clients who have multiple email addresses and are associated with the branch 'chennai'.
SELECT c.name, c.row_no
FROM clients c
JOIN clients_multi_email cm ON c.row_no = cm.row_no
WHERE c.branch = 'chennai';

select * from clients_multi_email;

# 20. How many clients have roles as 'previous' and raw materials have roles as 'present'?
SELECT COUNT(*) AS prev_clients_present_raw_materials
FROM clients c
JOIN raw_materials r ON c.role = 'previous' AND r.role = 'present';

# 21. List the clients whose names contain 'e' or 'i' and have a contact number ending with '5'.
SELECT * FROM clients WHERE (name LIKE '%e%' OR name LIKE '%i%') AND contact LIKE '%5';

# 21. How many clients have email addresses that contain their name?
SELECT COUNT(*) AS name_in_email_clients FROM clients WHERE email LIKE CONCAT('%', name, '%');

# 22. Retrieve the names and addresses of clients along with their associated branch information, sorted alphabetically by branch name.
SELECT c.name, c.address, co.branch_name
FROM clients c
JOIN company co ON c.branch = co.branch_name
ORDER BY co.branch_name;

# 23. What is the average number of characters in client names?
SELECT AVG(LENGTH(name)) AS avg_name_length FROM clients;

# 24. List the raw materials whose addresses contain a digit and have a contact number greater than the average contact number of raw materials.
SELECT * FROM raw_materials WHERE address REGEXP '[0-9]' AND contact > (SELECT AVG(contact) FROM raw_materials);

# 25. How many clients have duplicate names?
SELECT name, COUNT(*) AS name_duplicates FROM clients GROUP BY name HAVING COUNT(*) > 1;

# 26. Retrieve the names of raw materials along with their associated branch information, where the branch name is the same as the first character of the raw material name.
SELECT r.name, co.branch_name
FROM raw_materials r
JOIN company co ON SUBSTRING(r.name, 1, 1) = co.branch_name;

# 27. What is the difference between the maximum and minimum contact numbers of clients?
SELECT MAX(contact) - MIN(contact) AS contact_range FROM clients;

# 28. List the clients and raw materials along with their associated branch information where both the client and raw material names contain exactly five characters.
SELECT c.name AS client_name, r.name AS raw_material_name, co.branch_name
FROM clients c
JOIN raw_materials r ON LENGTH(c.name) = 5 AND LENGTH(r.name) = 5
JOIN company co ON c.branch = co.branch_name;

# 29. How many raw materials have addresses that start with '1' and contact numbers that end with '0'?
SELECT COUNT(*) AS specific_address_contact_raw_materials FROM raw_materials WHERE address LIKE '1%' AND contact LIKE '%0';

# 30. Retrieve the names of clients along with the number of raw materials they are associated with, sorted in descending order of the number of raw materials.
SELECT c.name, COUNT(r.name) AS raw_material_count
FROM clients c
LEFT JOIN raw_materials r ON c.name = r.name
GROUP BY c.name
ORDER BY raw_material_count DESC;

# 31. What is the average length of email addresses of clients in the database?
SELECT AVG(LENGTH(email)) AS avg_email_length FROM clients;

# 32. List the raw materials whose names start with a vowel and have a contact number less than 6000000000.
SELECT * FROM raw_materials WHERE name REGEXP '^[aeiouAEIOU]' AND contact < 6000000000;

# 33. How many clients have email addresses with a domain ending in '.net'?
SELECT COUNT(*) AS net_domain_clients FROM clients WHERE email LIKE '%.net';

# 34. Retrieve the names of clients along with the names of raw materials they are associated with, ordered by client names alphabetically and raw material names in reverse alphabetical order.
SELECT c.name AS client_name, r.name AS raw_material_name
FROM clients c
JOIN raw_materials r ON c.name = r.name
ORDER BY c.name ASC, r.name DESC;

# 35. What is the total count of clients whose contact numbers are prime numbers?
SELECT COUNT(*) AS prime_contact_clients
FROM clients
WHERE contact IN (
    2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 7013133895
);
select * from clients;

# 36. List the raw materials that have the same email address as any of the clients.
SELECT r.*
FROM raw_materials r
JOIN clients c ON r.email = c.email;

# 37. Retrieve the names of clients along with the branch names of the branches where they are located, sorted by client names alphabetically.
SELECT c.name AS client_name, co.branch_name
FROM clients c
JOIN company co ON c.branch = co.branch_name
ORDER BY c.name ASC;

# 38. What is the average length of the addresses of raw materials in the database?
SELECT AVG(LENGTH(address)) AS avg_address_length FROM raw_materials;

# 39. List the raw materials whose names contain more vowels than consonants.
SELECT * FROM raw_materials WHERE LENGTH(name) - LENGTH(REPLACE(LOWER(name), 'a', '')) > LENGTH(name) - LENGTH(REPLACE(LOWER(name), 'e', '')) + LENGTH(name) - LENGTH(REPLACE(LOWER(name), 'i', '')) + LENGTH(name) - LENGTH(REPLACE(LOWER(name), 'o', '')) + LENGTH(name) - LENGTH(REPLACE(LOWER(name), 'u', ''));

# 40. What is the difference between the total number of clients and the total number of raw materials?
SELECT (SELECT COUNT(*) FROM clients) - (SELECT COUNT(*) FROM raw_materials) AS difference;




SELECT * FROM raw_materials WHERE role = 'previous';

select name from raw_materials order by name asc;


show tables;


-- Trigger to log changes in a table
CREATE TRIGGER log_changes
AFTER INSERT ON my_table
FOR EACH ROW
BEGIN
    INSERT INTO log_table (event_type, event_description, event_date)
    VALUES ('INSERT', CONCAT('New record inserted with ID: ', NEW.id), NOW());
END;
-- Cursor to loop through a result set and perform operations
DELIMITER //
CREATE PROCEDURE process_data()
BEGIN
    DECLARE done BOOLEAN DEFAULT FALSE;
    DECLARE temp INT;
    DECLARE my_cursor CURSOR FOR SELECT id FROM my_table;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN my_cursor;
    my_loop: LOOP
        FETCH my_cursor INTO temp;
        IF done THEN
            LEAVE my_loop;
        END IF;
        -- Process the data here
    END LOOP my_loop;
    CLOSE my_cursor;
END //
DELIMITER ;
-- Stored procedure to get employee details by ID
DELIMITER //
CREATE PROCEDURE get_employee(IN emp_id INT)
BEGIN
    SELECT * FROM employees WHERE id = emp_id;
END //
DELIMITER ;
-- Function to calculate the factorial of a number
DELIMITER //
CREATE FUNCTION factorial(n INT) RETURNS INT
BEGIN
    DECLARE result INT DEFAULT 1;
    DECLARE i INT DEFAULT 1;
    WHILE i <= n DO
        SET result = result * i;
        SET i = i + 1;
    END WHILE;
    RETURN result;
END //
DELIMITER ;
















create database college;
use college;

create table students(row_no int primary key, name varchar(30) not null, age int not null);

select * from students;

insert into students values(1, 'harshil', 19), (2, 'kumar', 19);

show databases;

create table payment(
 id int primary key,
 customer varchar(30) not null,
 mode varchar(30) not null,
 city varchar(30) not null
);

insert into payment values 
(101, 'Olivia Barret', 'Netbanking', 'Portland'),
(102, 'krishan', 'credit card', 'vaikuntam'),
(103, 'ram', 'credit card', 'ayodhay');

select * from payment;

select mode, count(id)
from payment
group by mode
order by count(id) asc;

CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    order_date DATE,
    total_amount DECIMAL(10, 2)
);

drop table orders;
CREATE TABLE order_summary (
    summary_id INT AUTO_INCREMENT PRIMARY KEY,
    total_orders INT,
    total_amount DECIMAL(10, 2)
);

DELIMITER //
CREATE TRIGGER after_order_insert
AFTER INSERT ON orders
FOR EACH ROW
BEGIN
    DECLARE total_orders INT;

    -- Get total number of orders
    SELECT COUNT(*) INTO total_orders
    FROM orders;

    -- Update order_summary table
    UPDATE order_summary
    SET total_orders = total_orders,
        total_amount = total_amount + NEW.total_amount;
END;
//
DELIMITER ;

SET SQL_SAFE_UPDATES = 0;

INSERT INTO orders (order_date, total_amount) VALUES ('2024-04-03', 50.75);

SELECT * FROM order_summary;

drop trigger after_order_insert;
delimiter //
CREATE TRIGGER after_order_insert
AFTER INSERT ON orders
FOR EACH ROW
BEGIN
    DECLARE total_orders INT;

    -- Get total number of orders
    SELECT COUNT(*) INTO total_orders
    FROM orders;

    -- Update order_summary table
    UPDATE order_summary
    SET total_orders = total_orders,
        total_amount = total_amount + NEW.total_amount;
END;
//

delimiter ;


select * from students;

alter table students
add column class int;

update students
set class = 6
where row_no = 1;

insert into students values(3, 'harshil', 5, 9);

alter table students
add constraint unique(name);

delete from students
where row_no = 3;

select * from students;

create trigger trail_trigger
before update on students
for each row
set new.class = 20-new.age;

update students
set age = 12
where row_no = 2;

DELIMITER //

CREATE PROCEDURE check_palindrome (
	IN p_number INT,
    OUT p_is_palindrome VARCHAR(3)
)
BEGIN
    DECLARE v_reversed_number INT;
    DECLARE v_temp INT;
    DECLARE v_remainder INT;
    
    SET v_temp := p_number;
    SET v_reversed_number := 0;
    
    WHILE v_temp > 0 DO
        SET v_remainder := MOD(v_temp, 10);
        SET v_reversed_number := v_reversed_number * 10 + v_remainder;
        SET v_temp := FLOOR(v_temp / 10);
    END WHILE;
    
    IF p_number = v_reversed_number THEN
        SET p_is_palindrome := 'YES';
    ELSE
        SET p_is_palindrome := 'NO';
    END IF;
END //

DELIMITER ;


CALL check_palindrome(12321, @x);
SELECT @x;




 





create database model;
use model;

create table employee(
 employee_id int primary key,
 first_name varchar(30) not null,
 last_name varchar (30) not null,
 hourly_pay decimal (5,2) not null,
 job varchar(30) not null,
 hire_data date
);


insert into employee values
(1, 'krishna', 'harshil', 10.5, 'god', '2024-05-01'), 
(2, 'John', 'Smith', 20.75, 'human', '2024-06-15'), 
(3, 'Alice', 'Wonderland', 15.99, 'fantasy', '2024-07-20'), 
(4, 'Emma', 'Watson', 30.25, 'actor', '2024-08-10'), 
(5, 'Peter', 'Parker', 12.99, 'superhero', '2024-09-05');

select * from employee;

delimiter //

create procedure summ()
begin
declare dropp int default 0;
declare sum int default 0;
declare temp int;
declare curr cursor for select hourly_pay from employee;
declare continue handler for not found set dropp =1;
open curr;
get_mark:loop
fetch curr into temp;
set sum = sum+temp;
select sum;
if dropp =1 then 
leave get_mark;
end if;
end loop get_mark;
close curr;

end //
delimiter ;

call summ;
delimiter //

create procedure print_first_name()
begin
declare finished int default 0;
declare res varchar(300);
declare fn varchar(30);
declare get_first_name cursor for select first_name from employee;
declare continue handler for not found set finished = 1;
open get_first_name;
get_first_name_loop:loop
fetch get_first_name into fn;
if finished = 1 then leave get_first_name_loop;
end if;
set res = concat(res, ',', fn);
end loop get_first_name_loop;
close get_first_name;
select res;
end //

delimiter ;

call print_first_name();


delimiter //

create trigger trail
before update on hourly_pay
for each row
begin


end //

delimiter ;


select 'hello' as message;













 



 




