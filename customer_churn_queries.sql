CREATE TABLE Customers(
	Customer_ID VARCHAR(10),
	Customer_Name VARCHAR(50),
	Age INT,
	Gender VARCHAR(10),
	City VARCHAR(30),
	Subscription_type VARCHAR(20),
	Monthly_Charges INT,
	Tenure_Months INT,
	Complaints INT,
	Support_Tickets INT,
	Churn_Status VARCHAR(5),
	Customer_Category VARCHAR(30),
	Churn_Risk VARCHAR(20)
);


-- Total Customers
SELECT COUNT(*) FROM customers;









-- Churn Customers
SELECT COUNT(*) FROM customers
WHERE churn_status='Yes';







-- Active Customers
SELECT COUNT(*) FROM customers
WHERE churn_status='No';









-- Churn Rate
SELECT ROUND(
	COUNT(CASE WHEN churn_status='Yes' THEN 1 END)*100.0/COUNT(*),2) AS churn_rate
FROM customers;







-- Churn by Subscription
SELECT subscription_type, COUNT(*)
FROM customers
WHERE churn_status='Yes'
GROUP BY subscription_type;






-- Churn by City
SELECT city, COUNT(*) FROM customers
WHERE churn_status='Yes'
GROUP BY city
ORDER BY COUNT(*) DESC;



SELECT * FROM Customers;



