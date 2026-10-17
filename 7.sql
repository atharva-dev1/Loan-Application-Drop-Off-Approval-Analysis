SELECT
    source,
    COUNT(*) AS total_applications,
    SUM(
        CASE
            WHEN kyc_completed = 0 THEN 1
            ELSE 0
        END
    ) AS kyc_incomplete,
    ROUND(
        100.0 * SUM(
            CASE
                WHEN kyc_completed = 0 THEN 1
                ELSE 0
            END
        ) / COUNT(*),
        2
    ) AS dropoff_percentage
FROM loan_applications
GROUP BY source
ORDER BY dropoff_percentage DESC;
