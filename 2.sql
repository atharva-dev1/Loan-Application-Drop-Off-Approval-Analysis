USE loan_analytics;

INSERT INTO customers
(customer_id, age, employment_type, monthly_income, credit_score)
VALUES
(1, 24, 'Salaried', 32000, 742),
(2, 29, 'Salaried', 45000, 781),
(3, 35, 'Self-employed', 52000, 705),
(4, 26, 'Salaried', 28000, 668),
(5, 41, 'Self-employed', 68000, 790),
(6, 31, 'Salaried', 39000, 724),
(7, 23, 'Self-employed', 24000, 642),
(8, 38, 'Salaried', 75000, 803),
(9, 28, 'Salaried', 36000, 691),
(10, 33, 'Self-employed', 47000, 733);



INSERT INTO loan_applications
(application_id, customer_id, application_date,
 loan_amount, kyc_completed, loan_status,
 disbursed, source)
VALUES
(101, 1, '2026-08-01', 150000, 1, 'Approved', 1, 'Website'),
(102, 2, '2026-08-02', 250000, 1, 'Approved', 1, 'Referral'),
(103, 3, '2026-08-03', 300000, 1, 'Pending', 0, 'Website'),
(104, 4, '2026-08-04', 100000, 0, 'Pending', 0, 'Campaign'),
(105, 5, '2026-08-05', 400000, 1, 'Approved', 1, 'Referral'),
(106, 6, '2026-08-06', 180000, 1, 'Rejected', 0, 'Website'),
(107, 7, '2026-08-07', 120000, 0, 'Pending', 0, 'Campaign'),
(108, 8, '2026-08-08', 500000, 1, 'Approved', 1, 'Website'),
(109, 9, '2026-08-09', 200000, 1, 'Rejected', 0, 'Campaign'),
(110, 10, '2026-08-10', 220000, 1, 'Approved', 0, 'Referral'),
(111, 1, '2026-08-15', 180000, 1, 'Approved', 1, 'Website'),
(112, 3, '2026-08-18', 320000, 1, 'Rejected', 0, 'Referral');


SELECT * FROM customers;

SELECT * FROM loan_applications;


SELECT COUNT(*) AS total_customers
FROM customers;

SELECT COUNT(*) AS total_applications
FROM loan_applications;


