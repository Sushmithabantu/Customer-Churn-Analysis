CREATE DATABASE churn_analysis;
USE churn_analysis;
SELECT * FROM churn_data;
#Find Total Customers
SELECT COUNT(*) AS total_customers FROM churn_data;
#Find Churned Customers 
SELECT COUNT(*) AS churned_customers FROM churn_data WHERE Churn='Yes';
#find Active Customers
SELECT COUNT(*) AS churned_customers FROM churn_data WHERE Churn='No';
#churn by Gender 
SELECT Gender,COUNT(*) AS churn_count FROM churn_data WHERE Churn='Yes' GROUP BY Gender;
#churn by contract type
SELECT Contract,COUNT(*) AS churn_count FROM churn_data WHERE Churn='Yes' GROUP BY COntract ORDER BY churn_count DESC;
#churn by payment methd
Select PaymentMethod,COUNT(*) AS churn_count FROM churn_data WHERE Churn='Yes' GROUP BY PaymentMethod ORDER BY churn_count DESC;
#avg monthly charges
SELECT AVG(MonthlyCharges) AS avg_monthly_charges FROM churn_data;
#Compare charges of churned customers 
SELECT AVG(MonthlyCharges) AS churn_avg_charges FROM churn_data WHERE Churn='Yes';
