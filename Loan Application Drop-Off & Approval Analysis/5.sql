SELECT
    COUNT(*) AS total_applications,
    SUM(
        CASE
            WHEN loan_status = 'Approved' THEN 1
            ELSE 0
        END
    ) AS approved_applications,
    ROUND(
        100.0 * SUM(
            CASE
                WHEN loan_status = 'Approved' THEN 1
                ELSE 0
            END
        ) / COUNT(*),
        2
    ) AS approval_rate_percentage
FROM loan_applications;


SELECT
    loan_status,
    COUNT(*) AS total
FROM loan_applications
GROUP BY loan_status;

SELECT
    application_id,
    customer_id,
    loan_status
FROM loan_applications
WHERE loan_status = 'Approved';
