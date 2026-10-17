SELECT
    c.customer_id,
    c.employment_type,
    c.monthly_income,
    l.application_id,
    l.loan_amount,
    l.loan_status
FROM customers c
INNER JOIN loan_applications l
    ON c.customer_id = l.customer_id
ORDER BY c.customer_id;


SELECT
    c.employment_type,
    COUNT(l.application_id) AS total_applications,
    SUM(
        CASE
            WHEN l.loan_status = 'Approved' THEN 1
            ELSE 0
        END
    ) AS approved_applications
FROM customers c
INNER JOIN loan_applications l
    ON c.customer_id = l.customer_id
GROUP BY c.employment_type;

