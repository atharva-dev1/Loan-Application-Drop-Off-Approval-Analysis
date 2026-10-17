SELECT
    loan_status,
    COUNT(*) AS total_applications
FROM loan_applications
GROUP BY loan_status;
