-- 1. Create the Salesman table---------------------------
CREATE TABLE Salesman (
    salesman_id INT PRIMARY KEY,       
    name VARCHAR(50),                  
    city VARCHAR(50),                   
    commission DECIMAL(5,2)             
);

-- 2. Create the Customer table------------------------
CREATE TABLE Customer (
    customer_id INT PRIMARY KEY,        
    customer_name VARCHAR(50),         
    city VARCHAR(50),                 
    grade INT,                        
    salesman_id INT,                    
    FOREIGN KEY (salesman_id) REFERENCES Salesman(salesman_id) 
);

-- 3. Insert sample data into Salesman table----------------
INSERT INTO Salesman (salesman_id, name, city, commission) VALUES
(5001, 'James Hoog', 'New York', 0.15),
(5002, 'Nail Knite', 'Paris', 0.13),
(5005, 'Pit Alex', 'London', 0.11),
(5006, 'Mc Lyon', 'Paris', 0.14),
(5007, 'Paul Adam', 'Rome', 0.13);

-- 4. Insert sample data into Customer table----------------------
INSERT INTO Customer (customer_id, customer_name, city, grade, salesman_id) VALUES
(3002, 'Nick Rimando', 'New York', 100, 5001),
(3007, 'Brad Davis', 'New York', 200, 5001),
(3005, 'Graham Zusi', 'California', 200, 5002),
(3008, 'Julian Green', 'London', 300, 5002),
(3004, 'Fabian Johnson', 'Paris', 300, 5006),
(3009, 'Geoff Cameron', 'Berlin', 100, 5003); 

-- 5. Query to display Customer Name, City, Salesman, and Commission using JOIN--------------
SELECT
    Customer.customer_name AS "Customer Name",   
    Customer.city AS "City",                     
    Salesman.name AS "Salesman",                 
    Salesman.commission AS "Commission"   FROM Customer JOIN Salesman ON Customer.salesman_id = Salesman.salesman_id; -- Join on salesman_id
