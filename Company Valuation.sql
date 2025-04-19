CREATE TABLE payment_companies (
         company_id INT PRIMARY KEY, 
         company_name VARCHAR(100), 
         founded_year INT, 
         valuation DECIMAL(15, 2)
     );
     INSERT INTO payment_companies VALUES 
         (1, 'PhonePe', 2015, 1200000000), 
         (2, 'Paytm', 2014, 700000000), 
         (3, 'Mobikwik', 2019, 400000000);

SELECT * FROM PAYMENT_COMPANIES

/*
Get details of all digital payment companies founded between 2010 and 2020 that have a valuation greater than ₹500 crore.
*/


SELECT COMPANY_NAME
FROM PAYMENT_COMPANIES
WHERE FOUNDED_YEAR BETWEEN 2010 AND 2020
AND VALUATION > 500000000.00