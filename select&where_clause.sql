-- -----------------------------------> SELECT & WHERE CLAUSE <--------------------------------------------

-- To fetch the data from data base we use SELECT 
 
 SELECT * FROM STD; -- It will return entire attributes with respect to their records 
 
 -- TO fetch specific attributes from  database 
 
 SELECT STD_ID, NAME, GMAIL FROM STD;
 
 -- SELECT WITH WHERE CLAUSE 
 
 SELECT * FROM STD WHERE AGE > 50;
 
 SELECT * FROM STD WHERE AGE < 50;
 
 