-- Creating a table with name Customer 

CREATE TABLE CUSTOMER(
CUST_ID INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
FNAME VARCHAR(30) NOT NULL,
LNAME VARCHAR(30) NOT NULL,
MOBILE VARCHAR(30) NOT NULL,
OCCUPATION VARCHAR(30) NOT NULL,
DOB DATE NOT NULL
);

ALTER TABLE CUSTOMER
AUTO_INCREMENT = 501;

-- Inserting the data into CUSTOMER table 

INSERT INTO CUSTOMER (FNAME, LNAME, MOBILE, OCCUPATION, DOB)
VALUES
  ('John', 'Doe', '1234567890', 'Engineer', '1990-01-01'),
  ('Jane', 'Smith', '9876543210', 'Teacher', '1985-05-10'),
  ('Mike', 'Johnson', '5555555555', 'Doctor', '1978-11-20'),
  ('Sarah', 'Williams', '2222222222', 'Lawyer', '1992-09-15'),
  ('David', 'Brown', '3333333333', 'Architect', '1987-06-25'),
  ('Emily', 'Taylor', '4444444444', 'Artist', '1995-03-12'),
  ('Michael', 'Davis', '6666666666', 'Accountant', '1983-09-05'),
  ('Olivia', 'Anderson', '7777777777', 'Writer', '1998-11-30'),
  ('James', 'Wilson', '8888888888', 'Salesperson', '1991-04-17'),
  ('Sophia', 'Martinez', '9999999999', 'Entrepreneur', '1989-07-22'),
  ('Robert', 'Lee', '1111111111', 'Chef', '1982-02-14'),
  ('Amy', 'Moore', '2222222222', 'Nurse', '1986-08-19'),
  ('Thomas', 'Clark', '3333333333', 'Lawyer', '1993-12-05'),
  ('Jessica', 'Walker', '4444444444', 'Marketing Manager', '1984-10-28'),
  ('Daniel', 'Garcia', '5555555555', 'Software Engineer', '1997-07-09'),
  ('Ava', 'Rodriguez', '6666666666', 'Graphic Designer', '1994-03-23'),
  ('William', 'Lopez', '7777777777', 'Financial Analyst', '1999-09-02'),
  ('Mia', 'Hernandez', '8888888888', 'Event Planner', '1996-05-16'),
  ('Benjamin', 'Gonzalez', '9999999999', 'Consultant', '1992-01-03'),
  ('Ella', 'Perez', '1010101010', 'Teacher', '1988-06-11');
  
-- Creating a new table  ACCOUNT 

CREATE TABLE ACCOUNT(
ACC_ID INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
CUST_ID INT NOT NULL,
BID VARCHAR(10) NOT NULL,
OPENING_BAL FLOAT NOT NULL,
BRANCH VARCHAR(30) NOT NULL,
ATYPE VARCHAR(20) NOT NULL,
ASTATUS VARCHAR(10) NOT NULL,
FOREIGN KEY(CUST_ID) REFERENCES CUSTOMER(CUST_ID)
);
ALTER TABLE ACCOUNT
AUTO_INCREMENT = 1001;

-- Inserting the date into the ACCOUNT table 

INSERT INTO ACCOUNT (CUST_ID, BID, OPENING_BAL, BRANCH, ATYPE, ASTATUS)
VALUES
  (501, 1, 1000.00, 'Branch A', 'Savings', 'Active'),
  (502, 2, 500.00, 'Branch B', 'Checking', 'Active'),
  (503, 1, 2500.00, 'Branch A', 'Savings', 'Active'),
  (504, 3, 1500.00, 'Branch C', 'Checking', 'Active'),
  (505, 2, 3000.00, 'Branch B', 'Savings', 'Active'),
  (506, 3, 2000.00, 'Branch C', 'Checking', 'Active'),
  (507, 1, 4000.00, 'Branch A', 'Savings', 'Active'),
  (508, 2, 3500.00, 'Branch B', 'Checking', 'Active'),
  (509, 3, 1200.00, 'Branch C', 'Savings', 'Active'),
  (510, 1, 2800.00, 'Branch A', 'Checking', 'Active'),
  (511, 2, 1800.00, 'Branch B', 'Savings', 'Active'),
  (512, 3, 3200.00, 'Branch C', 'Checking', 'Active'),
  (513, 1, 4000.00, 'Branch A', 'Savings', 'Active'),
  (514, 2, 5000.00, 'Branch B', 'Checking', 'Active'),
  (515, 3, 2500.00, 'Branch C', 'Savings', 'Active'),
  (516, 1, 3800.00, 'Branch A', 'Checking', 'Active'),
  (517, 2, 4200.00, 'Branch B', 'Savings', 'Active');
-- -----------------------> JOINS <-------------------------------
-- INNER JOIN 

SELECT FNAME,ACC_ID FROM CUSTOMER 
INNER JOIN ACCOUNT 
ON CUSTOMER.CUST_ID = ACCOUNT.CUST_ID;

-- LEFT JOIN 

SELECT FNAME,ACC_ID,BID FROM CUSTOMER 
LEFT JOIN ACCOUNT 
ON CUSTOMER.CUST_ID = ACCOUNT.CUST_ID;

-- RIGHT JOIN 
SELECT FNAME,LNAME,MOBILE,BRANCH,ACC_ID FROM CUSTOMER 
RIGHT JOIN ACCOUNT 
ON CUSTOMER.CUST_ID = ACCOUNT.CUST_ID;

-- FULL JON
SELECT * FROM CUSTOMER
LEFT JOIN ACCOUNT 
ON CUSTOMER.CUST_ID = ACCOUNT.CUST_ID
UNION 
SELECT * FROM CUSTOMER
RIGHT JOIN ACCOUNT
ON ACCOUNT.CUST_ID = CUSTOMER.CUST_ID;

-- SELF JOIN 

SELECT * FROM CUSTOMER AS T1,CUSTOMER T2
WHERE T1.CUST_ID = T2.CUST_ID AND T1.DOB=T2.DOB;

