SELECT
    source,
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
    ) AS approval_rate

FROM loan_applications
GROUP BY source
ORDER BY approval_rate DESC;
