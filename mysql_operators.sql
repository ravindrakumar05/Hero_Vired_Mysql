-- -----------------------> OPERATOR <------------------------------ 
-- 1. = EQUALITY OPERATOR 

SELECT * FROM STD WHERE AGE = 23;

-- 2. != or <> NOT EQUAL OPERATOR 

SELECT * FROM STD WHERE AGE !=28;

-- 3. < LESS THAN OPERATOR 

SELECT * FROM STD WHERE AGE < 30 ;

-- 4. > GREATER THAN OPERATOR 

SELECT * FROM STD WHERE AGE > 80;

-- 5. <= LESS THAN EQUAL TO OPERATOR 

SELECT * FROM STD WHERE AGE <= 23;

-- 6. GREATER THAN EQUAL TO OPERATOR 

SELECT * FROM STD WHERE AGE >= 37;

-- ------------> LOGICAL OPERATORS <-----------------------------

-- AND OPERATOR 

SELECT * FROM STD WHERE AGE >30 AND AGE < 80;

-- OR OPERATOR 

SELECT * FROM STD WHERE AGE > 30 OR AGE < 80;

-- NOT OPERATOR 

SELECT * FROM STD WHERE NOT (AGE = 23);

-- --------------------> BETWEEN OPERATOR <--------------------

SELECT * FROM STD WHERE AGE BETWEEN 37 AND 88;

-- --------------------> IN OPERATOR <--------------------------

SELECT * FROM STD WHERE AGE IN (23,37,88,80);


SELECT * FROM STD;