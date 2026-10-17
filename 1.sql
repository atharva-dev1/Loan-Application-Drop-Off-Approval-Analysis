CREATE DATABASE loan_analytics;

USE loan_analytics;


SELECT DATABASE();



CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    age INT,
    employment_type VARCHAR(30),
    monthly_income DECIMAL(10,2),
    credit_score INT
);


SHOW TABLES;

DESCRIBE customers;


CREATE TABLE loan_applications (
    application_id INT PRIMARY KEY,
    customer_id INT,
    application_date DATE,
    loan_amount DECIMAL(12,2),
    kyc_completed TINYINT,
    loan_status VARCHAR(20),
    disbursed TINYINT,
    source VARCHAR(30),
    FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id)
);

