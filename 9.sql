SELECT
    c.employment_type,
    CASE
        WHEN c.credit_score < 650 THEN 'Below 650'
        WHEN c.credit_score < 700 THEN '650-699'
        WHEN c.credit_score < 750 THEN '700-749'
        ELSE '750+'
    END AS credit_score_band,
    COUNT(*) AS rejected_applications
FROM customers c
JOIN loan_applications l
    ON c.customer_id = l.customer_id
WHERE l.loan_status = 'Rejected'
GROUP BY
    c.employment_type,
    credit_score_band
ORDER BY rejected_applications DESC;
