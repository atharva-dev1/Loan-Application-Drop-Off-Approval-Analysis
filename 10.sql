SELECT
    CASE
        WHEN c.credit_score < 650 THEN 'Below 650'
        WHEN c.credit_score < 700 THEN '650-699'
        WHEN c.credit_score < 750 THEN '700-749'
        ELSE '750+'
    END AS credit_score_band,

    COUNT(*) AS total_applications,

    SUM(
        CASE
            WHEN l.loan_status = 'Approved' THEN 1
            ELSE 0
        END
    ) AS approved_applications,

    ROUND(
        100.0 * SUM(
            CASE
                WHEN l.loan_status = 'Approved' THEN 1
                ELSE 0
            END
        ) / COUNT(*),
        2
    ) AS approval_rate

FROM customers c
JOIN loan_applications l
    ON c.customer_id = l.customer_id

GROUP BY credit_score_band
ORDER BY approval_rate DESC;
